class DraftRound < ActiveRecord::Base
  belongs_to  :draft
  has_many :picks
end
