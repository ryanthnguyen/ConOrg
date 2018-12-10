# == Schema Information
#
# Table name: panelist_forms
#
#  id                             :integer          not null, primary key
#  amount_of_panels_at_convention :integer
#  amount_of_pro_row              :integer
#  approved                       :boolean
#  availability                   :string
#  badge_name                     :string
#  panel_suggestions              :string
#  panelist_before                :string
#  pen_name                       :string
#  place_art_in_art_room          :string
#  primary_professional_focus     :string
#  recent_credits                 :string
#  secondary_professional_focus   :string
#  short_biography                :string
#  time_in_pro_row                :string
#  title                          :string
#  website                        :string
#  created_at                     :datetime         not null
#  updated_at                     :datetime         not null
#  admin_id                       :integer
#  user_id                        :integer
#

class PanelistForm < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id', inverse_of: :panelist_forms, optional: true
  belongs_to :admin, class_name: 'Admin', foreign_key: 'admin_id', inverse_of: :panelist_forms, optional: true
  validates :amount_of_panels_at_convention, numericality: {only_integer:true}, presence: true
  validates :amount_of_pro_row, numericality: {only_integer: true}, presence: true
  validates_time :availability, :between => ['9:00am', '11:59pm'], presence: true
  validates :badge_name, length: { maximum: 50 }, presence: true
  validates :panel_suggestions, length: { maximum: 1000 }, presence: true
  validates :panelist_before, inclusion: {in: ['true', 'false']}, presence: true
  validates :pen_name, length: { maximum: 50 }, presence: true
  validates :place_art_in_art_room, inclusion: {in: ['true', 'false']}, presence: true
  validates :primary_professional_focus, inclusion: {in: %w[Anime Art/Jewelry Children's/YA Comics Costuming Gaming Movies/TV Music/Dance Paranormal Science Literary]}, presence: true
  validates :recent_credits, length: {maximum: 50}, presence: true
  validates :secondary_professional_focus, inclusion: {in: %w[Anime Art/Jewelry Children's/YA Comics Costuming Gaming Movies/TV Music/Dance Paranormal Science Literary]}, presence: true
  validates :short_biography, length: {maximum: 800}, presence: true
  validates :time_in_pro_row, inclusion: {in: ['true', 'false']}, presence: true
  validates :title, length: {maximum: 50}, presence: true
  validates :website, length: {maximum: 50}, presence: true
end
