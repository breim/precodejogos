require 'mechanize'
agent = Mechanize.new.get("http://www.pontofrio.com.br/Games/Xbox360/JogosXbox360/?Filtro=C336_C333_C337")
preco = agent.search('.sale > strong').map(&:text)[0]
descricao = agent.search('.name').map(&:text)[0]
link = agent.root.css('.hproduct > a[href]')[0]['href']
