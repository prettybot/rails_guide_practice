require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  setup do
    @patient_one = patients(:one)
    @patient_two = patients(:one)
    @physician_one = physicians(:one)
    @physician_two = physicians(:two)
  end

  test "auto create the third model" do
    assert_difference 'Appointment.count', 2 do
      @physician_one.patients = Patient.all
    end
  end

  test "auto delete association in the third model" do
    # binding.pry
    puts Appointment.count
    @physician_one.patients = Patient.all
    puts Appointment.count
    @physician_one.save
    # binding.pry
    assert_difference 'Appointment.count', -1 do
      @patient_one.destroy
      @physician_one.patients = Patient.all
    end
    @physician_one.reload
    puts Appointment.all.map &:as_json
    puts Appointment.count
  end
end
