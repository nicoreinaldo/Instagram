class AddPerfilToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :perfil, :string
  end
end
