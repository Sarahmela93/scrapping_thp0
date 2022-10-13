require 'rubygems'
require 'nokogiri'
require 'open-uri'

 
mails = []
page2 = Nokogiri::HTML(URI.open("https://annuaire-des-mairies.com/95/ableiges.html"))
page2.xpath('//*/table/tbody/tr[2]/td//*/table/tbody/tr[2]/td/table/tbody/tr/td[1]/p/a[1]').each do |i|
    mails.push(i.text)
end

villes = []
page1 = Nokogiri::HTML(URI.open("https://annuaire-des-mairies.com/val-d-oise.html"))
page1.xpath('//tr//a[@class="lientxt"]/@href').each do |i|
    villes.push(i.text)
    
end

puts a = villes.zip(mails).to_h


