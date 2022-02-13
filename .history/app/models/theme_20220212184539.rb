class Theme < ApplicationRecord
    before_validation :set_nameless_name

    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :bestscene, presence: true
    validates :dontradical

    private
    def dontradical
        errors.add(:description, '‰ßŒƒ‚È”­Œ¾‚Í‚â‚ß‚Ü‚µ‚å‚¤') if description&.include?('‚­‚»‚Â‚Ü‚ñ‚È‚¢')       
    end

    def set_nameless_name
        self.name = '–¼‘O‚È‚µ' if name.blank?
    end
end
