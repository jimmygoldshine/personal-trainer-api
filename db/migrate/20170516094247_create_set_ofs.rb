class CreateSetOfs < ActiveRecord::Migration[5.0]
  def change
    create_table :set_ofs do |t|
      t.integer :reps
      t.float :weight
      t.references :exercise, foreign_key: true

      t.timestamps
    end
  end
end
