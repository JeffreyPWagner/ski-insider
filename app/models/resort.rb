class Resort < ApplicationRecord
    has_many :tips
    has_one_attached :trail
    validates :name,  presence: true, length: {minimum: 4, maximum: 80}
    validates :state,  presence: true, length: {minimum: 2, maximum: 50}
end
