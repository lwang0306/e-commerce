class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories, :through => :products_categories, :join_table => "products_categories"
  has_and_belongs_to_many :users, :through => :users_products, :join_table => "users_products"

  validates :name, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :description, length: {maximum: 2000, too_long: "%{count} characters is the maximum allowed"}

  mount_uploader :image, ImageUploader
end
