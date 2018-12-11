# == Schema Information
#
# Table name: admins
#
#  id            :integer          not null, primary key
#  address       :string
#  age           :integer
#  city          :string
#  email_address :string
#  first_name    :string
#  last_name     :string
#  phone         :integer
#  state         :string
#  zip           :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "valid input" do 
    one = admins(:one)
    assert one.valid?
  end

  test "valid first name" do
    one = admins(:one)
    one.first_name = ""
    assert_not one.valid?
  end

  test "valid last name" do
    one = admins(:one)
    one.last_name = ""
    assert_not one.valid?
  end

  test "valid address" do 
    one = admins(:one) 
    one.address = ""
    assert_not one.valid?
  end

  test "valid city" do 
    one = admins(:one)
    one.city = ""
    assert_not one.valid?
  end

  test "valid state" do 
    one = admins(:one)
    one.state = "BB"
    assert_not one.valid?
  end

  test "valid zip" do
    one = admins(:one)
    one.zip = ""
    assert_not one.valid?
  end

  test "valid age" do 
    one = admins(:one)
    one.zip = ""
    assert_not one.valid?
  end

  test "valid email address" do 
    one = admins(:one)
    one.email_address = ""
    assert_not one.valid?
  end

  test "valid phone" do 
    one = admins(:one)
    one.phone = ""
    assert_not one.valid?
  end
end
