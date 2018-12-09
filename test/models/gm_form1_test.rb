# == Schema Information
#
# Table name: gm_form1s
#
#  id             :integer          not null, primary key
#  approved       :boolean
#  info_for_staff :string
#  name_on_badge  :string
#  t_shirt_size   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  admin_id       :integer
#  user_id        :integer
#

require 'test_helper'

class GmForm1Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
