class Theme < ApplicationRecord
    before_validation :set_nameless_name

    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :bestscene, presence: true
    validate :dontradical

    private
    def dontradical
        errors.add(:description, '過激な発言はやめましょう') if description&.include?('くそつまんない')       
    end

    def set_nameless_name
        self.name = '名前なし' if name.blank?
    end
end
