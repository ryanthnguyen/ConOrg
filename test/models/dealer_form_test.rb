# == Schema Information
#
# Table name: dealer_forms
#
#  id                               :integer          not null, primary key
#  address                          :string
#  age                              :integer
#  approved                         :boolean
#  badge_name                       :string
#  business_name                    :string
#  city                             :string
#  company_website_address          :string
#  display_require_AC_power         :string
#  email_address                    :string
#  first_name                       :string
#  last_name                        :string
#  list_names_ages_of_extra_members :string
#  number_of_memberships            :integer
#  number_of_spaces                 :integer
#  phone                            :integer
#  state                            :string
#  type_of_merchandise_or_service   :string
#  zip                              :integer
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
end
