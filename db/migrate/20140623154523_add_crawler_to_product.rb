class AddCrawlerToProduct < ActiveRecord::Migration
  def change
  	add_column :products, :crawler_id, :integer
  end
end
