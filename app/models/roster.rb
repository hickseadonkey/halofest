class Roster < ActiveRecord::Base
  belongs_to :user
  belongs_to :draft
  has_and_belongs_to_many :players

  validates :user_id, :draft_id, presence: true
end
