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
  validates :address, uniqueness: true, presence: true
  validates :age, numericality: {only_integer: true}, presence: true
  validates :city, length: { maximum: 50 }, presence: true
  validates :first_name, length: { maximum: 50 }, presence: true
  validates :last_name, length: { maximum: 50 }, presence: true
  validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true
  validates :zip, numericality: {only_integer: true}, presence: true
end
