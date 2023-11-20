class CreateQueens < ActiveRecord::Migration[7.0]
  def change
    create_table :queens do |t|
      t.string :name
      t.string :location
      t.string :skills
      t.text :bio
      t.string :price

      t.timestamps
    end
  end
end
