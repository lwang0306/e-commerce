class Product < ActiveRecord::Base
  has_and_belongs_to_many :categories
  has_and_belongs_to_many :users

  validates :name, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :description, length: {maximum: 2000, too_long: "%{count} characters is the maximum allowed"}

  mount_uploader :image, ImageUploader
end
