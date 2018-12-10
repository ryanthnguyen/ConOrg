class AddDetailsToPanelistForms < ActiveRecord::Migration[5.2]
  def change
    add_column :panelist_forms, :approved, :boolean
  end
end
