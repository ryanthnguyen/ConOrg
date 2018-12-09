class AddDetailsToGmForm2s < ActiveRecord::Migration[5.2]
  def change
    add_column :gm_form2s, :title_of_adventure_or_session, :string
    add_column :gm_form2s, :type_of_game, :string
    add_column :gm_form2s, :game_system_used, :string
    add_column :gm_form2s, :time_needed_for_game, :string
    add_column :gm_form2s, :minimum_number_of_players, :integer
    add_column :gm_form2s, :maximum_number_of_players, :integer
    add_column :gm_form2s, :materials_needed, :string
    add_column :gm_form2s, :player_experience, :string
    add_column :gm_form2s, :game_attitude, :string
    add_column :gm_form2s, :age_restriction, :string
    add_column :gm_form2s, :start_time_first_choice, :string
    add_column :gm_form2s, :start_time_second_choice, :string
    add_column :gm_form2s, :start_time_third_choice, :string
    add_column :gm_form2s, :game_description, :string
    add_column :gm_form2s, :info_for_staff, :string
  end
end
