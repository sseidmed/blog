require 'faker'
FactoryBot.define do
  factory :order do |f|
    f.product_name { Faker::Commerce.product_name }
    f.product_count { Faker::Number.number(digits: 5)}
    f.customer_id { FactoryBot.create(:customer).id }
  end


end
