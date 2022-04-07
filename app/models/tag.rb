class Tag < ApplicationRecord
    has_many :cafes, through: :cafe_tags
end
