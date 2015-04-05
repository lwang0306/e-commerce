class Product < ActiveRecord::Base
  has_many :rates


  def update_avg_rating
    all_rates = self.rates
    sum = 0
    all_rates.each do |x|
      sum += x.rating
    end
    if (all_rates.size() == 0) then
      self.average_rating = 0
    else
      self.average_rating = sum * 1.00 / all_rates.size()
    end
  end
end
