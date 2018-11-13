class CreatePanelistForms < ActiveRecord::Migration[5.2]
  def change
    create_table :panelist_forms do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :age
      t.string :pen_name
      t.string :badge_name
      t.integer :phone
      t.string :email_address
      t.string :website
      t.string :availability
      t.string :primary_professional_focus
      t.string :secondary_professional_focus
      t.boolean :panelist_before
      t.boolean :time_in_pro_row
      t.integer :amount_of_pro_row
      t.boolean :place_art_in_art_room
      t.string :recent_credits
      t.string :short_biography
      t.string :panel_suggestions
      t.integer :amount_of_panels_at_convention

      t.timestamps
    end
  end
end
