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
end
