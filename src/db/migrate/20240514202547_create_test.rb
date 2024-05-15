class CreateTest < ActiveRecord::Migration[7.0]
  def change
    create_table :tests do |t|
      t.string :letter, limit: 1, unique: true
      t.string :description
      t.integer :cant_questions, default: 0
      t.integer :game_number, foreign_key: true

      t.timestamps
    end

    add_index :tests, :letter, unique:true
  end
end
