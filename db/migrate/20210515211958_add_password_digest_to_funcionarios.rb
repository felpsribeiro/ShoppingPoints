class AddPasswordDigestToFuncionarios < ActiveRecord::Migration[6.1]
  def change
    add_column :funcionarios, :password_digest, :string, null: false
  end
end
