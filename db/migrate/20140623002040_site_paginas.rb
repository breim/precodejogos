class SitePaginas < ActiveRecord::Migration
  def change
  	add_column :crawlers, :site_paginas, :integer, :default => 0
  end
end
