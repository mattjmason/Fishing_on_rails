class Location < ApplicationRecord
    has_many :fish
    has_many :anglers, through: :fish
    belongs_to :category
end
