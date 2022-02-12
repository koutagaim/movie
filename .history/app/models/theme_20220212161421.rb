class Theme < ApplicationRecord
    validates :name, presence: true , length: { minimum: 1 }
end
