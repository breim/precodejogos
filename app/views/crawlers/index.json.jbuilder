json.array!(@crawlers) do |crawler|
  json.extract! crawler, :id, :site_name, :site_link, :product_price, :product_title, :product_image, :product_link, :status
  json.url crawler_url(crawler, format: :json)
end
