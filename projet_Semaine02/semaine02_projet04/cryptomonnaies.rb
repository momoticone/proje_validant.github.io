require 'rubygems'
require 'nokogiri'
require 'open-uri'

COIN_MARKET_URL = 

def get_value(url)
	rates = Hash.new()
	page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
	currency = page.css('td[2]>a')
	rate = page.css('td[5]>a.price')
	for i in 0...currency.length do
		rates[currency[i].text] = rate[i].text
	end
	rates.each do |x, y|
		puts "#{x}: #{y}"
	end
end

while true
	get_value("https://coinmarketcap.com/all/views/all/")
	sleep 3600
end
