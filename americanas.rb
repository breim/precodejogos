require 'mechanize'
agent = Mechanize.new.get("http://www.americanas.com.br/linha/291236/games/jogos-playstation-3")
preco = agent.search('.sale').map(&:text)[0]
descricao = agent.search('.top-area-product').map(&:text)[0]
link = agent.root.css('.productImg > a[href]')[0]['href']
