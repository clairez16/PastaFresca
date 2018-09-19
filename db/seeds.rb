require 'open-uri'
require 'nokogiri'

url = "https://www.nonnabox.com/types-of-pasta/"

html_file = open(url).read
html_doc = Nokogiri::HTML(html_file)

puts "Seeding the pastas"

html_doc.search('.ez-toc-section').each do |element|
  pasta_name = element.text.strip.match(/(?<=\. ).*/)
  if pasta_name.nil? == false
    Noodle.create(name: pasta_name[0].capitalize)
  end
end

puts "Finished seeding the pastas"

puts "Seeding the subscriptions"

initial_offer = Subscription.create(name: "Pas d'abonnement", price_per_month: 0, number_of_packs_per_week: 0)
first_offer = Subscription.create(name: "Pack Petite Faim", price_per_month: 15, number_of_packs_per_week: 2)
second_offer = Subscription.create(name: "Pack Grosse Faim", price_per_month: 25, number_of_packs_per_week: 4)

puts "Finished seeding the subscriptions"
