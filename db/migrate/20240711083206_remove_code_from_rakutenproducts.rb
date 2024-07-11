class RemoveCodeFromRakutenproducts < ActiveRecord::Migration[7.1]
  def change
    remove_column :rakuten_products, :code, :string
    add_column :products, :rakuten_code, :string
  end
end
