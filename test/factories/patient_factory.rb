# == Schema Information
#
# Table name: patients
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'faker'

FactoryBot.define do
  factory :patient do
    name { Faker::Name.name }
  end
end

