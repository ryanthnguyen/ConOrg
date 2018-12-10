class RemoveDetailsFromGmForm2s < ActiveRecord::Migration[5.2]
  def change
    remove_column :gm_form2s, :address, :string
    remove_column :gm_form2s, :age, :string
    remove_column :gm_form2s, :city, :string
    remove_column :gm_form2s, :first_name, :string
    remove_column :gm_form2s, :games, :string
    remove_column :gm_form2s, :last_name, :string
    remove_column :gm_form2s, :state, :string
    remove_column :gm_form2s, :zip, :integer
  end
end
