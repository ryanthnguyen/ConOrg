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
  test "valid input" do 
    one = panelist_forms(:one)
    assert one.valid?
  end

  test "valid title" do 
    one = panelist_forms(:one)
    one.title = ""
    assert_not one.valid?
  end

  test "valid pen name" do 
    one = panelist_forms(:one)
    one.pen_name = ""
    assert_not one.valid?
  end

  test "valid badge name" do 
    one = panelist_forms(:one)
    one.badge_name = ""
    assert_not one.valid?
  end

  test "valid website" do 
    one = panelist_forms(:one)
    one.website = "http:asdfa;lksdfjasldkfjasdlfkasdfa;lskdjaskdjlkjlkjljfd.com"
    assert_not one.valid?
  end

  test "availability" do 
    one = panelist_forms(:one)
    one.availability = "6:00am"
    assert_not one.valid?
  end

  test "valid primary professional focus" do 
    one = panelist_forms(:one)
    one.primary_professional_focus = "speedster"
    assert_not one.valid?
  end

  test "valid secondary professional focus" do 
    one = panelist_forms(:one)
    one.secondary_professional_focus = "body builder"
    assert_not one.valid?
  end

  test "valid panelist before" do 
    one = panelist_forms(:one)
    one.panelist_before = ""
    assert_not one.valid?
  end

  test "valid time in pro row" do 
    one = panelist_forms(:one)
    one.time_in_pro_row = ""
    assert_not one.valid?
  end

  test "valid amount in pro row" do 
    one = panelist_forms(:one)
    one.amount_of_pro_row = ""
    assert_not one.valid?
  end

  test "valid place in art room" do 
    one = panelist_forms(:one)
    one.place_art_in_art_room = ""
    assert_not one.valid?
  end

  test "valid recent credit" do 
    one = panelist_forms(:one)
    one.recent_credits = ""
    assert_not one.valid?
  end

  test "valid short bio" do 
    one = panelist_forms(:one)
    one.short_biography = ""
    assert_not one.valid?
  end

  test "valid panel suggestion" do
    one = panelist_forms(:one)
    one.panel_suggestions = ""
    assert_not one.valid?
  end

  test "valid amount of panels at convention" do 
    one = panelist_forms(:one)
    one.amount_of_panels_at_convention = ""
    assert_not one.valid?
  end
end
