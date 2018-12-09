class RemoveDetailsFromPanelistForms < ActiveRecord::Migration[5.2]
  def change
    remove_column :panelist_forms, :address, :string
    remove_column :panelist_forms, :age, :integer
    remove_column :panelist_forms, :city, :string
    remove_column :panelist_forms, :email_address, :string
    remove_column :panelist_forms, :first_name, :string
    remove_column :panelist_forms, :last_name, :string
    remove_column :panelist_forms, :phone, :string
    remove_column :panelist_forms, :state, :string
    remove_column :panelist_forms, :zip, :integer
  end
end
