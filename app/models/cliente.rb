class Cliente < ApplicationRecord
    has_secure_password

    validates :nome, :email, :usuario, presence: true
    validates :email, uniqueness: true
    validates :usuario, uniqueness: { case_sensitive: false }
    validates :saldo_pontos, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

    has_many :troca_produtos
    has_many :produtos, through: :troca_produtos
end
