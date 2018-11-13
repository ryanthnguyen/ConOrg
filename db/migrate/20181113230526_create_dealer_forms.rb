class CreateDealerForms < ActiveRecord::Migration[5.2]
  def change
    create_table :dealer_forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :badge_name
      t.integer :age
      t.string :business_name
      t.string :type_of_merchandise_or_service
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone
      t.string :company_website_address
      t.string :email_address
      t.integer :number_of_spaces
      t.string :display_require_AC_power
      t.integer :number_of_memberships
      t.string :list_names_ages_of_extra_members

      t.timestamps
    end
  end
end
