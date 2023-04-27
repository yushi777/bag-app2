class Item < ApplicationRecord


validates :brand_name, presence: true
validates :product_name, presence: true
validates :category_id, presence: true
validates :price, presence: true

  belongs_to :user
end
