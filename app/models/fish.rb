class Fish < ApplicationRecord
    belongs_to :angler 
    belongs_to :locations
    has_many :characteristics 
    

end
