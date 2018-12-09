# == Schema Information
#
# Table name: registration_forms
#
#  id               :integer          not null, primary key
#  approved         :boolean
#  coupon_codes     :string
#  different_prices :integer
#  payment_type     :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  admin_id         :integer
#  user_id          :integer
#

require 'test_helper'

class RegistrationFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
