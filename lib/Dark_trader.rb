require 'rubygems'
require 'nokogiri'
require 'open-uri'


page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

crypto = []
page.xpath('//*/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[2]/div/a[2]').each do |i|
    crypto.push(i.text)
end

values = []
page.xpath('//*/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[*]/td[5]/div/a').each do |i|
    values.push(i.text)
end



puts a = crypto.zip(values).to_h
