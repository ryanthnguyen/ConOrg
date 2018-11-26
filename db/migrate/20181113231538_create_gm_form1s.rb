class CreateGmForm1s < ActiveRecord::Migration[5.2]
  def change
    create_table :gm_form1s do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :age

      t.timestamps
    end
  end
end
