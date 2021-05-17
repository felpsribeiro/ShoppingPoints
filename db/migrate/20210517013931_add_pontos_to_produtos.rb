class AddPontosToProdutos < ActiveRecord::Migration[6.1]
  def change
    add_column :produtos, :pontos, :integer
  end
end
