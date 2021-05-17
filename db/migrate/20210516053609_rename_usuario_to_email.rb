class RenameUsuarioToEmail < ActiveRecord::Migration[6.1]
  def change
    rename_column :funcionarios, :usuario, :email
  end
end
