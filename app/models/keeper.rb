class Keeper < ActiveRecord::Base
  belongs_to :user
  belongs_to :draft
  belongs_to :draft_round
  belongs_to :player
end
