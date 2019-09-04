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

require 'test_helper'

class SectionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
