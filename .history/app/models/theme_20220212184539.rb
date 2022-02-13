class Theme < ApplicationRecord
    before_validation :set_nameless_name

    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :bestscene, presence: true
    validates :dontradical

    private
    def dontradical
        errors.add(:description, '�ߌ��Ȕ����͂�߂܂��傤') if description&.include?('�����܂�Ȃ�')       
    end

    def set_nameless_name
        self.name = '���O�Ȃ�' if name.blank?
    end
end
