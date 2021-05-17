class CreateTrocaProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :troca_produtos do |t|
      t.bigint :cliente_id, null: false
      t.bigint :produto_id, null:false
      t.decimal :estado, null:false

      t.timestamps
    end
  end
end
