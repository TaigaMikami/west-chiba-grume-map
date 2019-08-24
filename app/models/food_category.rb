# frozen_string_literal: true

class FoodCategory < ApplicationRecord
  has_many :shop
end
