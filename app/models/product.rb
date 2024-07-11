class Product < ApplicationRecord
    has_many :rakuten_products, dependent: :destroy
    
    validates :code, presence: true, uniqueness: true
    
end
