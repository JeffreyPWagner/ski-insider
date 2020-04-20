class Tip < ApplicationRecord
  belongs_to :resort
  belongs_to :user

  acts_as_votable


  enum category: [:trails, :food, :facilities, :passes, :events, :town]
end
