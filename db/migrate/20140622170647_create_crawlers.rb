class CreateCrawlers < ActiveRecord::Migration
  def change
    create_table :crawlers do |t|
      t.string :site_name
      t.text :site_link
      t.string :product_price
      t.string :product_title
      t.text :product_image
      t.text :product_link
      t.integer :status

      t.timestamps
    end
  end
end
