# == Schema Information
#
# Table name: sections
#
#  id          :bigint           not null, primary key
#  title       :string(255)
#  document_id :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'faker'

FactoryBot.define do
  factory :section do
    sequence :title do |n|
      "第#{n}小节"
    end
    document
  end
end

