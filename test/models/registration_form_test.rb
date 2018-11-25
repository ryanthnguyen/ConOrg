# == Schema Information
#
# Table name: registration_forms
#
#  id               :integer          not null, primary key
#  address          :string
#  city             :string
#  coupon_codes     :string
#  different_prices :integer
#  first_name       :string
#  last_name        :string
#  payment_type     :string
#  state            :string
#  zip              :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
<<<<<<< HEAD
#
=======
#  admin_id         :integer
#  user_id          :integer
#

require 'test_helper'
>>>>>>> 3123eac8fa1b961697018f56d34472fd70e9bd39

require 'test_helper'

class RegistrationFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
