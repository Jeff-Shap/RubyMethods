#stock_ticker.rb
# puts "Please input the symbol of the stock you which to track: "
# stock_to_track = gets.chomp

require 'csv'
require 'HTTParty'

def import
	CSV.foreach("http://www.nasdaq.com/screening/companies-by-name.aspx?letter=0&exchange=nasdaq&render=download", headers: true) do |row|
		p o = row.to_hash
	end
end


import

# response = HTTParty.get('http://finance.yahoo.com/q?s=AAPL')

# require 'nokogiri'

# dom = Nokogiri::HTML(response.body)

# price_span = dom.xpath("//span[@id='yfs_l84_aapl']")

# live_price = price_span.first.content
		
# puts "Apple stock is currently trading at $#{price_span.first.content} per share"

