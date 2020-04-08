class Resort < ApplicationRecord
    has_many :tips
    has_one_attached :trail
end
