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
#  admin_id   :integer
#  user_id    :integer
#

class GmForm2 < ApplicationRecord
    belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :gm_form2s
    belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :gm_form2s, optional: true
end
