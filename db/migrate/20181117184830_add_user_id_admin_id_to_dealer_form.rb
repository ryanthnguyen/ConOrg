class AddUserIdAdminIdToDealerForm < ActiveRecord::Migration[5.2]
  def change
    add_column :dealer_forms, :user_id, :integer
    add_column :dealer_forms, :admin_id, :integer
  end
end
