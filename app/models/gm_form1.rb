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
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :gm_form1s, optional:true
  belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :gm_form1s, optional: true
  validates :name_on_badge, length: {maximum:500}, presence:true
  validates :t_shirt_size, inclusion: {in: ["S", "M","L","XL","2X","3X","4X"]}, presence: true
  validates :info_for_staff, length: {maximum: 1000}, presence: true
end
