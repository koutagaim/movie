class Theme < ApplicationRecord
    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :besescene, presence: true
    validates :dontradical

    private
    def dontradical
        errors.add(:description, '‰ßŒƒ‚È”­Œ¾‚Í‚â‚ß‚Ü‚µ‚å‚¤') if name&.include?('‚­‚»‚Â‚Ü‚ñ‚È‚¢')       
    end
end
