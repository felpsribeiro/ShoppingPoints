class RemoveColunmPasswordConfirmation < ActiveRecord::Migration[6.1]
  def change
    remove_column :funcionarios, :password
  end
end
