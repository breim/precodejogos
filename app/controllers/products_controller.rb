class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all.order("created_at desc").page(params[:page]).per(20)
    #@game = Game.find(params[:id])
    #@products = Product.where("product_title LIKE '%#{@game.name}%'")
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end


  def add_game
    @game = Game.find(params[:id])
    @products = Product.where("product_title LIKE '%#{@game.name}%'")
  end

  def create_game
    @game_id = params['id'].to_s.gsub(/[^\d]/, '')
    @product_ids = params['product_ids']

    @product_ids.each do |p|
      atualizar = Product.find(p.to_i)
      atualizar.update_attributes(:game_id => @game_id)
    end
    redirect_to games_path

  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @game = Game.find(params[:id])
    @products = Product.where("product_title LIKE '%#{@game.name}%'")
  end

   
  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:product_title, :product_price, :product_link, :site_name, :status, :console_id, :category_id, :crawler_id,:game_id)
    end
end
