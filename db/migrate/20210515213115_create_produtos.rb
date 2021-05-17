class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome, null: false
      t.text :descricao
      t.string :foto
      t.bigint :categoria_id, null: false

      t.timestamps
    end
  end
end
