# == Schema Information
#
# Table name: gm_form2s
#
#  id         :integer          not null, primary key
#  address    :string
#  age        :integer
#  city       :string
#  first_name :string
#  games      :string
#  last_name  :string
#  state      :string
#  zip        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class GmForm2Test < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
