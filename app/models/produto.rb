class Produto < ApplicationRecord
    validates :nome, :categoria_id, presence: true

    mount_uploader :foto, FotoUploader

    has_many :troca_produtos
    has_many :clientes, through: :troca_produtos

    belongs_to :categoria
end
