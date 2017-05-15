class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :workout, foreign_key: true

      t.timestamps
    end
  end
end
