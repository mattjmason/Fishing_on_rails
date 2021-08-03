class Angler < ApplicationRecord
    has_many :fish
    has_many :locations, through: :fish 
    has_many :categories, :through => :locations
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true
    has_secure_password 
    
end
