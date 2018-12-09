# == Schema Information
#
# Table name: panelist_forms
#
#  id                             :integer          not null, primary key
#  amount_of_panels_at_convention :integer
#  amount_of_pro_row              :integer
#  approved                       :boolean
#  availability                   :string
#  badge_name                     :string
#  panel_suggestions              :string
#  panelist_before                :boolean
#  pen_name                       :string
#  place_art_in_art_room          :boolean
#  primary_professional_focus     :string
#  recent_credits                 :string
#  secondary_professional_focus   :string
#  short_biography                :string
#  time_in_pro_row                :boolean
#  title                          :string
#  website                        :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  admin_id                       :integer
#  user_id                        :integer
#

require 'test_helper'

class PanelistFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
