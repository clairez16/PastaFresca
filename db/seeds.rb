require 'open-uri'
require 'nokogiri'

url = "https://www.nonnabox.com/types-of-pasta/"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

puts "Seeding..."

html_doc.search('.ez-toc-section').each do |element|
  pasta_name = element.text.strip.match(/(?<=\. ).*/)
  if pasta_name.nil? == false
    Pastum.create(name: pasta_name[0].capitalize)
  end
end

puts "Finished seeding"
