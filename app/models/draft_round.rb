class DraftRound < ActiveRecord::Base
  belongs_to  :draft
  has_many :picks
  has_many :keepers
end
