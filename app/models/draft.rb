class Draft < ActiveRecord::Base
  has_many :draft_rounds
  has_many :picks
  has_many :keepers
end
