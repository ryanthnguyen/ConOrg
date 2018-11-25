# == Schema Information
#
# Table name: admins
#
#  id            :integer          not null, primary key
#  address       :string
#  age           :integer
#  city          :string
#  email_address :string
#  first_name    :string
#  last_name     :string
#  phone         :integer
#  state         :string
#  zip           :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#


class Admin < ApplicationRecord
    has_many :dealer_forms, class_name: 'DealerForm', foreign_key: 'admin_id', inverse_of: :admin, dependent: :destroy
    has_many :gm_form1s, class_name: 'GmForm1', foreign_key: 'admin_id', inverse_of: :admin, dependent: :destroy
    has_many :gm_form2s, class_name: 'GmForm2', foreign_key: 'admin_id', inverse_of: :admin, dependent: :destroy
    has_many :panelist_forms, class_name: 'PanelistForm', foreign_key: 'admin_id', inverse_of: :admin, dependent: :destroy
    has_many :registraion_forms, class_name: 'RegistraionForm', foreign_key: 'admin_id', inverse_of: :admin, dependent: :destroy
    validates :address, uniqueness: true, presence: true
    validates :age, numericality: {only_integer: true}, presence: true
    validates :city, length: { maximum: 50 }, presence: true
    validates :email_address, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, presence: true, uniqueness: true, presence: true
    validates :first_name, length: { maximum: 50 }, presence: true
    validates :last_name, length: { maximum: 50 }, presence: true
    validates :phone, numericality: {only_integer: true}, presence: true
    validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true
    validates :zip, numericality: {only_integer: true}, presence: true
end

