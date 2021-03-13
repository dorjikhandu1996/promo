class Discount < ApplicationRecord
  belongs_to :DiscountType
  belongs_to :category
end
