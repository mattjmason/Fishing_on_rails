class Location < ApplicationRecord
    has_many :fish
    has_many :anglers, through: :fish
    belongs_to :category
    accepts_nested_attributes_for :fish, reject_if: proc { |attributes| attributes['species'].blank? || attributes['color'].blank? || attributes['weight'].blank?}
   
    validates :city, presence: true
    validates :state, presence: true 


end
