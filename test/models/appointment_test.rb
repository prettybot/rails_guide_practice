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

require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
