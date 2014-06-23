#encoding:utf-8
require 'mechanize'

task :add_jogos => :environment do

	Crawler.all.each do |c|
		
		# Variables for documentatiton
		# \o/

		#siteName = c.site_name
		#productPrice =	c.product_price
		#productTitle = c.product_title
		#productLink  = c.product_link
		#productImage = c.product_image
		#site_paginas é o total de pagínas que o link tem e deve ser percorrido
		#.gsub(/[^0-9,]/, '') # Expressão regular só para pegar o valor como float
		#console_id , ID cadastrado para o console ;) XBOX,PS3 ou PS4, sacou ?

		# - end
		
		c.site_paginas.times do |pagina|
			
			agent = Mechanize.new.get(c.site_link + '/' + pagina.to_s ) if c.status == 0
			agent = Mechanize.new.get(c.site_link) if c.status == 1

			total = agent.search(c.product_title).count
			puts total
			total.times do |t|
				productPrice =	agent.search(c.product_price).map(&:text)[t].gsub(/[^0-9,]/, '').gsub(",",".") if agent.search(c.product_price)[t].present?
				productTitle =	agent.search(c.product_title).map(&:text)[t] if agent.search(c.product_title)[t].present?
				productLink  =	agent.root.css(c.product_link)[t]['href'] if agent.root.css(c.product_link)[t].present?
				consoleId 	 = c.console_id

				# Verifica se o link do produto existe na base
				verificar = Product.find_by(:product_link => productLink)

				# Verifica se o preço do produto é o memso, caso não seja atualiza ele(Podemos criar outra tabela de preços para verificar as alterações de preços no decorrer do Mês)
				if verificar != nil && verificar.product_price.to_f != productPrice.to_f
					verificar.update_attributes(:product_price => productPrice)
				# Se o link não existe ele cadastra o produto na base
				elsif verificar == nil
					Product.create!(:product_title => productTitle,:product_price => productPrice, :product_link => productLink, :console_id => consoleId, :crawler_id => c.id )
				end
			end
		end
	end
end