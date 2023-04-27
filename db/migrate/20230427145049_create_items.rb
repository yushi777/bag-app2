class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :brand_name,          null: false
      t.string     :product_name,        null: false
      t.integer    :category_id,         null: false
      t.integer    :price,               null: false
      t.references :user,                null: false ,foreign_key: true


      t.timestamps
    end
  end
end
