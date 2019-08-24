# frozen_string_literal: true

categories = YAML.load_file(Rails.root.join('db', 'seeds', 'data', 'food_categories.yml'))

categories.each do |category|
  FoodCategory.find_or_create_by(name: category['name'])
end
