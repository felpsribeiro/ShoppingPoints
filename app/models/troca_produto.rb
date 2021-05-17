class TrocaProduto < ApplicationRecord
    enum estado: [:Aprovado,:Aberto,:Cancelado]

    validates :cliente_id, :produto_id, :estado, presence: true

    belongs_to :cliente
    belongs_to :produto
end
