# == Schema Information
#
# Table name: users
#

#  id                 :integer          not null, primary key
#  address            :string
#  age                :integer
#  city               :string
#  confirmation_token :string(128)
#  email              :string
#  email_address      :string
#  encrypted_password :string(128)
#  first_name         :string
#  last_name          :string
#  membership_type    :string
#  phone              :integer
#  remember_token     :string(128)
#  state              :string
#  zip                :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_users_on_email           (email)
#  index_users_on_remember_token  (remember_token)
#

class User < ApplicationRecord
  include Clearance::User

    #I changed around a couple of 1 to 1 to 1 to many
    has_many :dealer_forms, class_name: 'DealerForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :gm_form1s, class_name: 'GmForm1', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :gm_form2s, class_name: 'GmForm2', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :panelist_forms, class_name: 'PanelistForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :registration_forms, class_name: 'RegistrationForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    validates :address, uniqueness: true, presence: true
    validates :age, numericality: {only_integer: true}, presence: true
    validates :city, length: { maximum: 50 }, presence: true
    validates :email_address, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, presence: true, uniqueness: true, presence: true
    validates :first_name, length: { maximum: 50 }, presence: true
    validates :last_name, length: { maximum: 50 }, presence: true
    validates :membership_type, inclusion: {in: ["Consuite Giveaway", "Banquet Tickets", "Adult Pre-Registration", "Child Pre-Registration"]}, presence: true
    validates :phone, numericality: {only_integer: true}, presence: true
    validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true
    validates :zip, numericality: {only_integer: true}, presence: true
end

