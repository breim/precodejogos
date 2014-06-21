require 'mechanize'
agent = Mechanize.new.get("http://www.ricardoeletro.com.br/Loja/Games/Playstation-3/Jogos-para-Playstation-3/47-213-217")
preco = agent.search('.produto-por').map(&:text)[0]
descricao = agent.search('.nome-produto-vertical').map(&:text)[0]
link = agent.root.css('.nome-produto-vertical > a[href]')[0]['href']
