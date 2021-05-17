class CreateClientes < ActiveRecord::Migration[6.1]
  enable_extension "citext"

  def change
    create_table :clientes do |t|
      t.string :nome, null: false
      t.citext :email, null: false
      t.string :usuario, null: false
      t.string :password_digest, null: false
      t.integer :saldo_pontos, default: 0

      t.timestamps
    end
    add_index :clientes, :email, unique: true
  end
end
