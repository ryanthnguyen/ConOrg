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
    validates :address, uniqueness: true, presence: true
    validates :age, numericality: {only_integer: true}, presence: true
    validates :city, length: { maximum: 50 }, presence: true
    validates :first_name, length: { maximum: 50 }, presence: true
    validates :games, length: {maximum: 100}, presence: true
    validates :last_name, length: { maximum: 50 }, presence: true
    validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true
    validates :zip, numericality: {only_integer: true}, presence: true
end

