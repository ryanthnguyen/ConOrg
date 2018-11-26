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
  validates :address, uniqueness: true, presence: true
  validates :city, length: { maximum: 50 }, presence: true
  validates :coupon_codes, length: {maximum: 10}
  validates :different_prices, inclusion: {in: [10, 25, 35, 17.50]}, presence: true
  validates :first_name, length: { maximum: 50 }, presence: true
  validates :last_name, length: { maximum: 50 }, presence: true
  validates :payment_type, inclusion: {in: %w[credit debit]}, presence: true
  validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true
  validates :zip, numericality: {only_integer: true}, presence: true
end