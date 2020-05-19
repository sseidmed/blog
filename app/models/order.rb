class Order < ApplicationRecord
  belongs_to :customer
  CUSTOMERS = [1, 2, 3, 4]
  validates :product_name, presence: true
  validates :product_count, presence: true
  validates :product_count, numericality: { greater_than_or_equal_to: 1}
  validates :customer, presence: true

  def self.customers
   two_d = []
   CUSTOMERS.each do |f|
     two_d << [f,f]
   end
   return two_d
 end


end
