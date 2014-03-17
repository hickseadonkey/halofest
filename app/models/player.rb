class Player < ActiveRecord::Base
  has_many :player_stats, class_name: 'PlayerStats', :dependent => :destroy
  has_and_belongs_to_many :rosters
  has_many :keepers

  validates :first_name, presence: true

  def full_name
    [first_name, last_name].reject(&:blank?).join(" ")
  end

  def as_json(options={})
    {
      fpts_total: player_stats.map { |ps| { ps.year => ps.fpts_total } }
    }
  end
end
