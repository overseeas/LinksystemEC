class RakutenProduct < ApplicationRecord
  belongs_to :product

  validates :code, presence: true
  validates :sku, presence: true, uniqueness: true
  validates :price, presence: true
end
