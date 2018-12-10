class AddDetailsToGmForm1s < ActiveRecord::Migration[5.2]
  def change
    add_column :gm_form1s, :name_on_badge, :string
    add_column :gm_form1s, :t_shirt_size, :string
    add_column :gm_form1s, :info_for_staff, :string
  end
end
