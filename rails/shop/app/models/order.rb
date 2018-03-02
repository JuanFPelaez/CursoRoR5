class Order < ApplicationRecord::Base
  has_many :line_items, dependent: :destroy
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase Order"]
  validates :name, :adress, :email, presence:true
  validates :pay_type, inclusion: PAYMENT_TYPES
end
