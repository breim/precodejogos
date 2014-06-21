require 'mechanize'
agent = Mechanize.new.get("http://www.magazineluiza.com.br/jogos-para-playstation-3/games/s/ga/gajp/")
agent.search('.price').map(&:text)[0]
agent.search('.productTitle').map(&:text)[0]
agent.root.css('.productShowCase > li > a[href]')[0]['href']
