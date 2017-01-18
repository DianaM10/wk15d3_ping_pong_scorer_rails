class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :team_a_player1, index: true, foreign_key: true
      t.references :team_b_player1, index: true, foreign_key: true
      t.integer :team_a_score
      t.integer :team_b_score

      t.timestamps null: false
    end
  end
end
