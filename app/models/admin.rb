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
end
