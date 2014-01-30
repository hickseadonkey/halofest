class Roster < ActiveRecord::Base
  belongs_to :user, :draft

  has_many :players
end
