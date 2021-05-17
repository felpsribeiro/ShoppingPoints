class CreateFuncionarios < ActiveRecord::Migration[6.1]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :usuario
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end
