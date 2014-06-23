json.array!(@products) do |product|
  json.extract! product, :id, :product_title, :product_price, :product_link, :site_name, :status, :console_id, :category_id
  json.url product_url(product, format: :json)
end
