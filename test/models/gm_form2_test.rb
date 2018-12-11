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
  test "valid input" do 
    one = gm_form2s(:one)
    assert one.valid?
  end

  test "valid title" do 
    one = gm_form2s(:one)
    one.title_of_adventure_or_session = ""
    assert_not one.valid?
  end

  test "valid game system used" do 
    one = gm_form2s(:one)
    one.game_system_used = ""
    assert_not one.valid?
  end

  test "valid time needed for game" do 
    one = gm_form2s(:one)
    one.time_needed_for_game = ""
    assert_not one.valid?
  end

  test "valid minimum of players" do 
    one = gm_form2s(:one)
    one.minimum_number_of_players = ""
    assert_not one.valid?
  end

  test "valid maximum of players" do 
    one = gm_form2s(:one)
    one.maximum_number_of_players = ""
    assert_not one.valid?
  end

  test "valid materials needed" do 
    one = gm_form2s(:one)
    one.materials_needed = "None"
    assert_not one.valid?
  end

  test "valid player experience" do 
    one = gm_form2s(:one)
    one.player_experience = "None" 
    assert_not one.valid?
  end

  test "valid game attitude" do 
    one = gm_form2s(:one)
    one.game_attitude = "None"
    assert_not one.valid?
  end

  test "valid age restriction" do
    one = gm_form2s(:one)
    one.age_restriction = "None"
    assert_not one.valid?
  end

  test "valid start time first choice" do 
    one = gm_form2s(:one)
    one.start_time_first_choice = ""
    assert_not one.valid?
  end

  test "valid start time second choice" do 
    one = gm_form2s(:one)
    one.start_time_second_choice = ""
    assert_not one.valid?
  end

  test "valid start time third choice" do
    one = gm_form2s(:one)
    one.start_time_third_choice = ""
    assert_not one.valid?
  end

  test "valid game description" do
    one = gm_form2s(:one)
    one.game_description = ""
    assert_not one.valid?
  end

  test "valid info for staff" do
    one = gm_form2s(:one)
    one.info_for_staff = ""
    assert_not one.valid?
  end
end
