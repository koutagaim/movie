class Theme < ApplicationRecord
    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :bestscene, presence: true
    validates :dontradical

    private
    def dontradical
        errors.add(:description, '過激な発言はやめましょう') if description&.include?('くそつまんない')       
    end
end
