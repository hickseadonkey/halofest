class Player < ActiveRecord::Base
  has_many :player_stats, class_name: 'PlayerStats'
  has_and_belongs_to_many :rosters

  validates :first_name, presence: true

  def full_name
    [first_name, last_name].reject(&:blank?).join(" ")
  end
end
