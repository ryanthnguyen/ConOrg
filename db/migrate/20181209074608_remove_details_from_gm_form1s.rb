class RemoveDetailsFromGmForm1s < ActiveRecord::Migration[5.2]
  def change
    remove_column :gm_form1s, :address, :string
    remove_column :gm_form1s, :age, :string
    remove_column :gm_form1s, :city, :string
    remove_column :gm_form1s, :first_name, :string
    remove_column :gm_form1s, :last_name, :string
    remove_column :gm_form1s, :state, :string
    remove_column :gm_form1s, :zip, :string
  end
end
