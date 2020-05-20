require 'faker'
FactoryBot.define do
  factory :order do |f|
    f.product_name { Faker::Name.product_name }
    f.product_count { Faker::Number.positive.product_count }
    f.customer { Faker::Name.customer }
  end


end
