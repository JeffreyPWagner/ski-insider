class Tip < ApplicationRecord
  belongs_to :resort
  belongs_to :user

  enum category: [:trails, :food, :facilities, :passes, :events, :town]
end
