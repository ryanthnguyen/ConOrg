# == Schema Information
#
# Table name: users
#
<<<<<<< HEAD
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
=======
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

require 'test_helper'
>>>>>>> 3123eac8fa1b961697018f56d34472fd70e9bd39

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
