class Categoria < ApplicationRecord
    validates :nome, presence: true

    has_many :produtos
end
