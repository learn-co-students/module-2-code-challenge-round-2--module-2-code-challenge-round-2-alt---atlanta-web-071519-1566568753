class Pizza < ApplicationRecord

    has_many :restaurants, through: :pizzarests
    has_many :pizzarests

    validates :name, uniqueness: true

    
end
