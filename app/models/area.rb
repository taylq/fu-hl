class Area < ApplicationRecord
  has_many :areas_products, dependent: :destroy
  has_many :products, through: :areas_products, dependent: :destroy
  has_many :users, dependent: :destroy
end
