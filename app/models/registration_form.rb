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
#

class RegistrationForm < ApplicationRecord
end
