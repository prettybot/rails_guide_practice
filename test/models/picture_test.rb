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

require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  setup do
    @user = create :user
    @product = create :product
  end

  test "two ways using polymorphic" do
    pic_one = @user.pictures.create(url:"http://xxx")
    assert_equal pic_one.imageable_type,"User"
    assert_equal pic_one.imageable_id, @user.id

    pic_two = create :picture,imageable: @product
    assert_equal pic_two.imageable_type,"Product"
    assert_equal pic_two.imageable_id, @product.id
  end
end
