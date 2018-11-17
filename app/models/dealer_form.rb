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
end
