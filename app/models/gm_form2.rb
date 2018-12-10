# == Schema Information
#
# Table name: gm_form2s
#
#  id                            :integer          not null, primary key
#  age_restriction               :string
#  approved                      :boolean
#  game_attitude                 :string
#  game_description              :string
#  game_system_used              :string
#  info_for_staff                :string
#  materials_needed              :string
#  maximum_number_of_players     :integer
#  minimum_number_of_players     :integer
#  player_experience             :string
#  start_time_first_choice       :string
#  start_time_second_choice      :string
#  start_time_third_choice       :string
#  time_needed_for_game          :string
#  title_of_adventure_or_session :string
#  type_of_game                  :string
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  admin_id                      :integer
#  user_id                       :integer
#

class GmForm2 < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :gm_form2s, optional: true
  belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :gm_form2s, optional: true
  validates :age_restriction, inclusion: {in: ["Youth", "Suitable for all ages", "Teen","Adult"]}
  validates :game_attitude, inclusion: {in: ["Very serious", "Serious", "Fun","Silly","Very silly"]}
  validates :game_description, length: { maximum: 800 }
  validates :game_system_used, length: { maximum: 300 }
  validates :info_for_staff, length: {maximum: 1000}
  validates :materials_needed, inclusion: {in: ["All materials for the game are provided by the gm", "All materials for the game are offered, but players can bring their own", "All players are required to bring their own materials"]}
  validates :maximum_number_of_players, numericality: {only_integer: true}
  validates :minimum_number_of_players, numericality: {only_integer: true}
  validates :player_experience, inclusion: {in: ["Beginners only", "Beginners welcome", "Basic knowledge", "Experts"]}
  validates :start_time_first_choice, length: {maximum: 50}
  validates :start_time_second_choice, length: {maximum: 50}
  validates :start_time_third_choice, length: {maximum: 50}
  validates :time_needed_for_game, length: {maximum: 20}
  validates :title_of_adventure_or_session, length: {maximum: 50}
  validates :type_of_game, inclusion: {in: ["Role playing game", "Live action role playing", "Collectible card game","Miniatures", "Board game", "Card game", "Other"]}
end
