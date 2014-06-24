class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.text :descripton
      t.integer :category_id
      t.integer :console_id
      t.string :youtube_link
      t.integer :status,:default => 0

      t.timestamps
    end
  end
end
