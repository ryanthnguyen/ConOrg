# == Schema Information
#
# Table name: dealer_forms
#
#  id                               :integer          not null, primary key
#  address                          :string
#  age                              :integer
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

class DealerForm < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :dealer_forms
    belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :dealer_forms, optional: true
    validates :address, uniqueness: true, presence: true
    validates :age, numericality: {only_integer: true}, presence: true
    validates :badge_name, length: { maximum: 50 }, presence: true
    validates :business_name, length: { maximum: 50 }, presence: true
    validates :city, length: { maximum: 50 }, presence: true
    validates :company_website_address, :url -> true, presence: true
    validates :display_require_AC_power, inclusion: {in: %w[yes no]}, presence: true
    validates :email_address, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, presence: true, uniqueness: true, presence: true
    validates :first_name, length: { maximum: 50 }, presence: true
    validates :last_name, length: { maximum: 50 }, presence: true
    validates :list_names_ages_of_extra_members, length: {maximum: 800}
    validates :number_of_memberships, numericality: {only_integer: true} presence: true
    validates :number_of_spaces, numericality: {only_integer: true} presence: true
    validates :phone, numericality: {only_integer: true}, presence: true
    validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true
    validates :type_of_merchandise_or_service, length: {maximum: 800}, presence: true
    validates :zip, numericality: {only_integer: true}, presence: true
end

