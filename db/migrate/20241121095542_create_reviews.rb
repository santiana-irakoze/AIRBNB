class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.float :rating
      t.string :title
      t.string :content
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
