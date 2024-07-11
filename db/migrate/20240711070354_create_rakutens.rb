class CreateRakutens < ActiveRecord::Migration[7.1]
  def change
    create_table :rakuten_products do |t|
      t.string :code
      t.string :sku
      t.integer :price
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
