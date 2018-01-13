class User < ApplicationRecord
  enum position: %i(admin seller user)

  belongs_to :area

  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
  has_one :cart, dependent: :destroy
end
