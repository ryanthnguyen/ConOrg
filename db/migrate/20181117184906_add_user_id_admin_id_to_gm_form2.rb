class AddUserIdAdminIdToGmForm2 < ActiveRecord::Migration[5.2]
  def change
    add_column :gm_form2s, :user_id, :integer
    add_column :gm_form2s, :admin_id, :integer
  end
end
