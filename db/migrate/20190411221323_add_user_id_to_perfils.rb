class AddUserIdToPerfils < ActiveRecord::Migration[5.1]
  def change
    add_reference :perfils, :user, foreign_key: true
  end
end
