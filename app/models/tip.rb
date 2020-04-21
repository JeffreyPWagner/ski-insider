class Tip < ApplicationRecord
  belongs_to :resort
  belongs_to :user

  acts_as_votable

  validates :title,  presence: true, length: {minimum: 4, maximum: 20}
  validates :body,  presence: true, length: {minimum: 10, maximum: 1000}
  
  enum category: [:trails, :food, :facilities, :passes, :events, :town]
end
