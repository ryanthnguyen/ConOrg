# == Schema Information
#
# Table name: gm_form1s
#
#  id             :integer          not null, primary key
#  approved       :boolean
#  info_for_staff :string
#  name_on_badge  :string
#  t_shirt_size   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  admin_id       :integer
#  user_id        :integer
#

require 'test_helper'

class GmForm1Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "valid input" do 
    one = gm_form1s(:one)
    assert one.valid?
  end

  test "valid t_shirt_size" do 
    one = gm_form1s(:one)
    one.t_shirt_size = 1
    assert_not one.valid?
  end

  test "valid info_for_staff" do 
    one = gm_form1s(:one)
    one.info_for_staff = ""
    assert_not one.valid?
  end
end
