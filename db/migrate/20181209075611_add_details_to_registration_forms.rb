class AddDetailsToRegistrationForms < ActiveRecord::Migration[5.2]
  def change
    add_column :registration_forms, :approved, :boolean
  end
end
