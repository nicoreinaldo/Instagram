class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :description
      t.integer :like_counter

      t.timestamps
    end
  end
end
