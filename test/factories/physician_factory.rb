# == Schema Information
#
# Table name: physicians
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'faker'

FactoryBot.define do
  factory :physician do
    name { Faker::Name.name }
  end
end
