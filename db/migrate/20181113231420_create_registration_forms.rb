class CreateRegistrationForms < ActiveRecord::Migration[5.2]
  def change
    create_table :registration_forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :different_prices
      t.string :payment_type
      t.string :coupon_codes

      t.timestamps
    end
  end
end
