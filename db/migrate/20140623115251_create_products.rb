class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_title
      t.decimal :product_price, :precision => 8, :scale => 2
      t.text :product_link
      t.string :site_name
      t.integer :status
      t.integer :console_id
      t.integer :category_id
      
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size

      t.timestamps
    end
  end
end
