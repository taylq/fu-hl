class Order < ApplicationRecord
  enum status: %i(accepted waiting unaccept)
  enum status_payment: %i(paid unpaid)

  belongs_to :user

  has_many :order_details, dependent: :destroy, inverse_of: :cart_order
  has_many :products, through: :order_details
end
