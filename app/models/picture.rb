# == Schema Information
#
# Table name: pictures
#
#  id             :bigint           not null, primary key
#  url            :string(255)
#  imageable_type :string(255)
#  imageable_id   :bigint
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end
