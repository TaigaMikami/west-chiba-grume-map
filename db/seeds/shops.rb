# frozen_string_literal: true

shops = JSON.parse(File.read(File.join(File.dirname(__FILE__), 'data', 'shops.json')))
pp shops
puts 'hoge'

shops.each do |shop|
  shop_names = Shop.pluck(:name)
  next if shop_names.include?(shop['name'])

  s = Shop.new(shop)
  s.save
end
