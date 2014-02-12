class Pick < ActiveRecord::Base
  belongs_to :users
  belongs_to :draft_round
  belongs_to :draft
end
