# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'faker'

FactoryBot.define do
  factory :product do
    sequence :name do |n|
      "产品#{n}"
    end
  end
end
