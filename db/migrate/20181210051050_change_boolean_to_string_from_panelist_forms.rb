class ChangeBooleanToStringFromPanelistForms < ActiveRecord::Migration[5.2]
  def change
    change_column :panelist_forms, :panelist_before, :integer
    change_column :panelist_forms, :place_art_in_art_room, :integer
    change_column :panelist_forms, :time_in_pro_row, :integer
  end
end
