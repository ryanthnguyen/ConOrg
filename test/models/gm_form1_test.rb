# == Schema Information
#
# Table name: gm_form1s
#
#  id         :integer          not null, primary key
#  address    :string
#  age        :integer
#  city       :string
#  first_name :string
#  last_name  :string
#  state      :string
#  zip        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin_id   :integer
#  user_id    :integer
#

require 'test_helper'

class GmForm1Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
