# == Schema Information
#
# Table name: physicians
#
#  id         :bigint           not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end
