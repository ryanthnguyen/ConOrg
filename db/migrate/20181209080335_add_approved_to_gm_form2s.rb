class AddApprovedToGmForm2s < ActiveRecord::Migration[5.2]
  def change
    add_column :gm_form2s, :approved, :boolean
  end
end
