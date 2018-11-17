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
end
