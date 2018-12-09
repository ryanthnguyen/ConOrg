class RemoveDetailsFromDealerForms < ActiveRecord::Migration[5.2]
  def change
    remove_column :dealer_forms, :address, :string
    remove_column :dealer_forms, :age, :string
    remove_column :dealer_forms, :city, :string
    remove_column :dealer_forms, :email_address, :string
    remove_column :dealer_forms, :first_name, :string
    remove_column :dealer_forms, :last_name, :string
    remove_column :dealer_forms, :phone, :integer
    remove_column :dealer_forms, :state, :string
    remove_column :dealer_forms, :zip, :integer
  end
end
