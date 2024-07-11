class AddRefferencePriceToRakutenProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :rakuten_products, :reference_price, :string
  end
end
