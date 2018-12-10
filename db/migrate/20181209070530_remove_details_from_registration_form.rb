class RemoveDetailsFromRegistrationForm < ActiveRecord::Migration[5.2]
  def change
    remove_column :registration_forms, :address, :string
    remove_column :registration_forms, :city, :string
    remove_column :registration_forms, :first_name, :string
    remove_column :registration_forms, :last_name, :string
    remove_column :registration_forms, :state, :string
    remove_column :registration_forms, :zip, :integer 
  end
end
