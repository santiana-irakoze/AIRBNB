class ModifyStructureGamesTable < ActiveRecord::Migration[7.1]
  def change
    remove_column :games, :picture, :string
    remove_column :games, :number_of_players, :integer
    add_column :games, :min_number_of_players, :integer
    add_column :games, :max_number_of_players, :integer
    add_column :games, :playing_time, :integer
  end
end
