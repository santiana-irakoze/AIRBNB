class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :picture
      t.text :description
      t.string :location
      t.float :price
      t.integer :number_of_players
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
