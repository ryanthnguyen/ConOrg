class AddUserIdAdminIdToPanelistForm < ActiveRecord::Migration[5.2]
  def change
    add_column :panelist_forms, :user_id, :integer
    add_column :panelist_forms, :admin_id, :integer
  end
end
