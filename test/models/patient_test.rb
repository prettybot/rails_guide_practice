# == Schema Information
#
# Table name: patients
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  setup do
    create_list :patient , 2
    create_list :physician, 2
  end

  test "auto create the third model" do
    patient = Physician.first
    assert_difference 'Appointment.count', 2 do
      patient.patients = Patient.all
    end
  end

  test "auto delete association in the third model" do
    physician = Physician.first
    physician.patients = Patient.all
    assert_difference 'Appointment.count', -1 do
      Patient.first.destroy
      physician.patients = Patient.all
    end
  end
end
