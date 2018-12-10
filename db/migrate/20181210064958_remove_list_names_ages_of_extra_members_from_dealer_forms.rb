class RemoveListNamesAgesOfExtraMembersFromDealerForms < ActiveRecord::Migration[5.2]
  def change
    remove_column :dealer_forms, :list_names_ages_of_extra_members, :string
  end
end
