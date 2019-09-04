# == Schema Information
#
# Table name: documents
#
#  id         :bigint           not null, primary key
#  title      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'faker'
FactoryBot.define do
  factory :document do
    title { Faker::Book.title }
  end
end
