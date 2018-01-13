class Cart < ApplicationRecord
  belongs_to :user

  has_many :order_details, dependent: :destroy, as: :cart_order
  has_many :products, through: :order_details, dependent: :destroy
end
