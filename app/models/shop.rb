# frozen_string_literal: true

class Shop < ApplicationRecord
  belongs_to :food_category

  validates :name, presence: true
  validates :address, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
end
