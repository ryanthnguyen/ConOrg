# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  address         :string
#  age             :integer
#  city            :string
#  email_address   :string
#  first_name      :string
#  last_name       :string
#  membership_type :string
#  phone           :integer
#  state           :string
#  zip             :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
    #I changed around a couple of 1 to 1 to 1 to many
    has_many :dealer_forms, class_name: 'DealerForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :gm_form1s, class_name: 'GmForm1', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :gm_form2s, class_name: 'GmForm2', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :panelist_forms, class_name: 'PanelistForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
    has_many :registration_forms, class_name: 'RegistrationForm', foreign_key: 'user_id', inverse_of: :user, dependent: :destroy
end
