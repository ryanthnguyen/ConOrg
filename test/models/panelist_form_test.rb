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
<<<<<<< HEAD
#
=======
#  admin_id                       :integer
#  user_id                        :integer
#

require 'test_helper'
>>>>>>> 3123eac8fa1b961697018f56d34472fd70e9bd39

require 'test_helper'

class PanelistFormTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
