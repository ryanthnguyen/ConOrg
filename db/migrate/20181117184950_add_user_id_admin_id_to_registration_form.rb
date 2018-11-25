class AddUserIdAdminIdToRegistrationForm < ActiveRecord::Migration[5.2]
  def change
    add_column :registration_forms, :user_id, :integer
    add_column :registration_forms, :admin_id, :integer
  end
end
