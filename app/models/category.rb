class Category < ApplicationRecord
    has_many :locations
    has_many :fish, through: :locations
    has_many :anglers, through: :fish
end
