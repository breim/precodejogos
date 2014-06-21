require 'mechanize'
agent = Mechanize.new.get("http://www.submarino.com.br/linha/301864/games/jogos-playstation-3")
preco = agent.search('.price').map(&:text)[0]
descricao = agent.search('.name').map(&:text)[0]
link = agent.root.css('.hproduct > a[href]')[0]['href']
