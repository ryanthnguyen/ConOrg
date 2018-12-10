class AddNameAndAgeOfMembersToDealerForms < ActiveRecord::Migration[5.2]
  def change
    add_column :dealer_forms, :name_and_age_of_members, :string
  end
end
