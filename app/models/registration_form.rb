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
#  admin_id         :integer
#  user_id          :integer
#

class RegistrationForm < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :registration_forms
    belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :registration_forms, optional: true
    
end
