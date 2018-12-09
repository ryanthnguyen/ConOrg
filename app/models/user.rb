# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  address                :string
#  admin                  :boolean
#  age                    :integer
#  city                   :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string
#  last_name              :string
#  membership_type        :string
#  middle_name            :string
#  phone                  :integer
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  state                  :string
#  zip                    :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :dealer_forms, class_name: 'DealerForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_many :gm_form1s, class_name: 'GmForm1', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_many :gm_form2s, class_name: 'GmForm2', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_many :panelist_forms, class_name: 'PanelistForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  has_many :registration_forms, class_name: 'RegistrationForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
  validates :address, uniqueness: true, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :age, numericality: {only_integer: true}, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :city, length: { maximum: 50 }, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :email, format: { with: /(\A([a-z]*\s*)*\<*([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\>*\Z)/i }, uniqueness: true, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :first_name, length: { maximum: 50 }, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :last_name, length: { maximum: 50 }, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :membership_type, inclusion: {in: ["Consuite Giveaway", "Banquet Tickets", "Child Pre-Regitration", "Adult Pre-Registration"]}, on: :update, unless: :encrypted_password_changed?
  validates :middle_name, length: { maximum: 50 }, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :phone, numericality: {only_integer: true}, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :state, inclusion: {in: %w[AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY]}, presence: true, on: :update, unless: :encrypted_password_changed?
  validates :zip, numericality: {only_integer: true}, presence: true, on: :update, unless: :encrypted_password_changed?
end
