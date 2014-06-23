#encoding:utf-8
require 'mechanize'

task :add_jogos => :environment do

	Crawler.all.each do |c|
		
		# Variables for documentation
		# \o/

		#siteName = c.site_name
		#productPrice =	c.product_price
		#productTitle = c.product_title
		#productLink  = c.product_link
		#productImage = c.product_image
		#site_paginas é o total de pagínas que o link tem e deve ser percorrido
		#.gsub(/[^0-9,]/, '') # Expressão regular só para pegar o valor como float

		# - end
		
		c.site_paginas.times do |pagina|
			
			agent = Mechanize.new.get(c.site_link + '/' + pagina.to_s )
			total = agent.search(c.product_price).count

			total.times do |t|
				puts	productPrice =	agent.search(c.product_price).map(&:text)[t].gsub(/[^0-9,]/, '')
				puts	productTitle =	agent.search(c.product_title).map(&:text)[t]
				puts	productLink  =	agent.root.css(c.product_link)[t]['href']
			end
			puts "oi"
		end
	
	end

end