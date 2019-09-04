# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  appointment_date :datetime
#  patient_id       :bigint
#  physician_id     :bigint
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'faker'

FactoryBot.define do
  factory :appointment do
    appointment_date {Faker::Date.forward(days: 14)}
  end
end
