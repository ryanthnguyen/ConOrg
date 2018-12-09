# == Schema Information
#
# Table name: gm_form2s
#
#  id                            :integer          not null, primary key
#  age_restriction               :string
#  approved                      :boolean
#  game_attitude                 :string
#  game_description              :string
#  game_system_used              :string
#  info_for_staff                :string
#  materials_needed              :string
#  maximum_number_of_players     :integer
#  minimum_number_of_players     :integer
#  player_experience             :string
#  start_time_first_choice       :string
#  start_time_second_choice      :string
#  start_time_third_choice       :string
#  time_needed_for_game          :string
#  title_of_adventure_or_session :string
#  type_of_game                  :string
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  admin_id                      :integer
#  user_id                       :integer
#

require 'test_helper'

class GmForm2Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
