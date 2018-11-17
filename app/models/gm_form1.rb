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
#

class GmForm1 < ApplicationRecord
end
