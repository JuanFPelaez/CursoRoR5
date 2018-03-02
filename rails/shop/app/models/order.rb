class Order < ApplicationRecord::Base
  PAYMENT_TYPES = ["Check", "Credit card", "Purchase Order"]
end
