class CreateFlashcards < ActiveRecord::Migration[5.1]
  def change
    create_table :flashcards do |t|
      t.references :user, foreign_key: true
      t.text :a_side
      t.text :b_side

      t.timestamps
    end
  end
end
