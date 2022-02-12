class Theme < ApplicationRecord
    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :besescene, presence: true
end
