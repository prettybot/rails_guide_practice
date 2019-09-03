require 'test_helper'

class ParagraphTest < ActiveSupport::TestCase
  setup do
    @document = documents(:one)
  end

  test "directly get paragraph in a document" do
    paragraphs = @document.paragraphs
    binding.pry
    assert_equal paragraphs.count ,2
  end
end
