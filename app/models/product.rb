class Product < ApplicationRecord
    has_many :rakuten_products, dependent: :destroy
    
    validates :code, presence: true, uniqueness: true
    validates :rakuten_code, uniqueness: true
    
end
