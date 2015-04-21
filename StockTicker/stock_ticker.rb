#stock_ticker.rb
require 'HTTParty'

response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')

require 'nokogiri'

dom = Nokogiri::HTML(response.body)

price_span = dom.xpath("//span[@id='yfs_l84_aapl']")

live_price = price_span.first.content
		puts "Apple stock is currently trading at #{price_span.first.content}"

