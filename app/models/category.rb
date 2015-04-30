class Category < ActiveRecord::Base
  has_and_belongs_to_many :products, :through => :products_categories, :join_table => "products_categories"

  validates :name, presence: true

  def get_products
    products = self.products
    return products
  end
end
