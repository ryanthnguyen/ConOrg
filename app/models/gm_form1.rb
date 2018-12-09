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

class GmForm1 < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :gm_form1s
  belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :gm_form1s, optional: true
  has_many :gm_form2s, class_name: 'GmForm2', foreign_key: 'gm_form1_id', inverse_of: :gm_form1s, dependent: :destroy
  validates :approved, inclusion: {in: [true, false]}
  validates :name_of_badge, length: {maximum:500}
  validates :t_shirt_size, inclusion: {in: ["S", "M","L","XL","2X","3X","4X"]}
end
