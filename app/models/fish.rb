class Fish < ApplicationRecord
    belongs_to :angler 
    belongs_to :locations
    has_many :characteristics 
    accepts_nested_attributes_for :locations

    def location_attributes=(hash_of_attributes)
        if !hash_of_attributes["city"].blank? && !hash_of_attributes["state"].blank?
            self.location = Location.find_or_create_by(hash_of_attributes)
        end
    end

    validates :color, presence: true
    validates :weight, numericality: {greater_than: 0, less_than: 100}
    validates :species, presence: true, uniqueness: {scope: [:location, :weight]}

def species_and_color 
        "#{self.location.name} - #{self.color} - #{self.weight}"
    end

    def self.order_by_weight
        self.order(weight: :desc)
    end
end
