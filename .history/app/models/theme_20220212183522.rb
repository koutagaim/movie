class Theme < ApplicationRecord
    validates :name, presence: true , length: { minimum: 2 }
    validates :description, presence: true
    validates :character, presence: true
    validates :besescene, presence: true
    validates :dontradical

    private
    def dontradical
        errors.add(:description, '�ߌ��Ȕ����͂�߂܂��傤') if name&.include?('�����܂�Ȃ�')       
    end
end
