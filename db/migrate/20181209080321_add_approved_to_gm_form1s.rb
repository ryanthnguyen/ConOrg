class AddApprovedToGmForm1s < ActiveRecord::Migration[5.2]
  def change
    add_column :gm_form1s, :approved, :boolean
  end
end
