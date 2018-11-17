# == Schema Information
#
# Table name: panelist_forms
#
#  id                             :integer          not null, primary key
#  address                        :string
#  age                            :integer
#  amount_of_panels_at_convention :integer
#  amount_of_pro_row              :integer
#  availability                   :string
#  badge_name                     :string
#  city                           :string
#  email_address                  :string
#  first_name                     :string
#  last_name                      :string
#  panel_suggestions              :string
#  panelist_before                :boolean
#  pen_name                       :string
#  phone                          :integer
#  place_art_in_art_room          :boolean
#  primary_professional_focus     :string
#  recent_credits                 :string
#  secondary_professional_focus   :string
#  short_biography                :string
#  state                          :string
#  time_in_pro_row                :boolean
#  title                          :string
#  website                        :string
#  zip                            :integer
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  admin_id                       :integer
#  user_id                        :integer
#

class PanelistForm < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :panelist_forms
    belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :panelist_forms, optional: true
end
