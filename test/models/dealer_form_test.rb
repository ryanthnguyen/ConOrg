# == Schema Information
#
# Table name: dealer_forms
#
#  id                               :integer          not null, primary key
#  approved                         :boolean
#  badge_name                       :string
#  business_name                    :string
#  company_website_address          :string
#  display_require_AC_power         :string
#  list_names_ages_of_extra_members :string
#  number_of_memberships            :integer
#  number_of_spaces                 :integer
#  type_of_merchandise_or_service   :string
#  created_at                       :datetime         not null
#  updated_at                       :datetime         not null
#  admin_id                         :integer
#  user_id                          :integer
#

require 'test_helper'

class DealerFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "valid input" do 
    one = dealer_forms(:one)
    assert one.valid?
  end

  test "valid badge name" do 
    one = dealer_forms(:one)
    one.badge_name = ''
    assert_not one.valid?
  end

  test "valid business name" do 
    one = dealer_forms(:one)
    one.business_name = ""
    assert_not one.valid?
  end

  test "valid type of merchandies or service" do 
    one = dealer_forms(:one)
    one.type_of_merchandise_or_service = ""
    assert_not one.valid?
  end

  test "valid company website" do
    one = dealer_forms(:one)
    one.company_website_address = ""
    assert_not one.valid?
  end

  test "valid number of spaces" do 
    one = dealer_forms(:one)
    one.number_of_spaces = ""
    assert_not one.valid?
  end

  test "valid display require ac power" do
    one = dealer_forms(:one)
    one.display_require_AC_power = true
    assert_not one.valid?
  end

  test "valid number of memberships" do 
    one = dealer_forms(:one)
    one.number_of_memberships = "yes"
    assert_not one.valid?
  end

  test "valid list names and ages of extra members" do
    one = dealer_forms(:one)
    one.list_names_ages_of_extra_members = ""
    assert_not one.valid?
  end
end
