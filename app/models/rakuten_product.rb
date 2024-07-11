class RakutenProduct < ApplicationRecord
  belongs_to :product

  validates :sku, presence: true, uniqueness: true
  validates :price, presence: true
  validates :reference_price, presence: true
end
