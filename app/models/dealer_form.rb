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

class DealerForm < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :dealer_forms
  belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :dealer_forms, optional: true
  validates :badge_name, length: { maximum: 50 }, presence: true
  validates :business_name, length: { maximum: 50 }, presence: true
  validates :company_website_address, presence: true
  validates :display_require_AC_power, inclusion: {in: %w[yes no]}, presence: true
  validates :list_names_ages_of_extra_members, length: {maximum: 800}
  validates :number_of_memberships, numericality: {only_integer: true}, presence: true
  validates :number_of_spaces, numericality: {only_integer: true}, presence: true
  validates :type_of_merchandise_or_service, length: {maximum: 800}, presence: true
  validates :approved, inclusion: {in: [true, false]}
end
