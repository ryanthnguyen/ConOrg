class AddUserIdAdminIdToGmForm1 < ActiveRecord::Migration[5.2]
  def change
    add_column :gm_form1s, :user_id, :integer
    add_column :gm_form1s, :admin_id, :integer
  end
end
