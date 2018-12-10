class AddDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :middle_name, :string
    add_column :users, :membership_type, :string
  end
end
