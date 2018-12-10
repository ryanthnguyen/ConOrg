# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  address                :string
#  admin                  :boolean
#  age                    :integer
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  membership_type        :string
#  middle_name            :string
#  phone                  :integer
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  state                  :string
#  zip                    :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #test for valid input
  test "valid input" do
    one = users(:one)
    assert one.valid?
  end

  test "valid name" do
    one = users(:one)
    one.first_name = ""
    one.middle_name = ""
    one.last_name = ""
    assert_not one.valid?
  end

  test "valid address" do 
    one = users(:one)
    one.address = ""
    assert_not one.valid?
  end

  test "valid city" do
    one = users(:one)
    one.city = "asdfasdfasdfasdfasdfadsfklsajdfl;kafj;dsalkfjdsl;fkjds;flkdsjfl;skfjs;lfkaj;flkdsjfkldjfkjasd;aslkdf"
    assert_not one.valid?
  end

  test "valid state" do 
    one = users(:one)
    one.state = "Tennessee"
    assert_not one.valid?
  end

  test "valid zip" do 
    one = users(:one)
    one.zip = "three eight zero seventeen"
    assert_not one.valid?
  end

  test "valid age" do 
    one = users(:one)
    one.age = ""
    assert_not one.valid?
  end

  test "valid phone" do 
    one = users(:one)
    one.phone = ""
    assert_not one.valid?
  end

  test "valid membership type" do 
    one = users(:one)
    one.membership_type = "regular member"
    assert_not one.valid?
  end
end
