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

class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
end
