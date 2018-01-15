class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  belongs_to :area

  has_many :orders, dependent: :destroy
  has_many :products, dependent: :destroy
  has_one :cart, dependent: :destroy

  ROLES = %i(admin seller user).freeze

  validates :name, presence: true, length: {maximum: 50}

  def has_role? role
    roles.include?(role)
  end
end
