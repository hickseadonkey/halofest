class Roster < ActiveRecord::Base
  belongs_to :user, :draft
  has_many_and_belongs_to_many :players
end
