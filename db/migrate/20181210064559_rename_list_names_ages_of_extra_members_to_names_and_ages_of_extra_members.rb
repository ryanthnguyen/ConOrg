class RenameListNamesAgesOfExtraMembersToNamesAndAgesOfExtraMembers < ActiveRecord::Migration[5.2]
  def change
    change_column :dealer_forms, :list_names_ages_of_extra_members, :name_and_age_of_members
  end
end
