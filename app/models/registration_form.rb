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

class RegistrationForm < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :registration_forms
  belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :registration_forms, optional: true
  validates :coupon_codes, length: {maximum: 10}
  validates :different_prices, inclusion: {in: [10, 25, 35, 17.50]}, presence: true
  validates :payment_type, inclusion: {in: %w[credit debit]}, presence: true
  validates :approved, inclusion: {in: [true, false]}
end
