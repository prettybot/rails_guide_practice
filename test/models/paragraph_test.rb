# == Schema Information
#
# Table name: paragraphs
#
#  id         :bigint           not null, primary key
#  content    :text(65535)
#  section_id :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ParagraphTest < ActiveSupport::TestCase
  setup do
    create(:paragraph)
  end

  test "directly get paragraph in a document" do
    # 实际上执行的是inner join
    paragraphs = Document.first.paragraphs
    assert_equal paragraphs.count ,1
  end
end
