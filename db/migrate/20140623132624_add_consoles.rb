class AddConsoles < ActiveRecord::Migration
  def change
  		add_column :crawlers,:console_id, :integer, :default => 0
  end
end
