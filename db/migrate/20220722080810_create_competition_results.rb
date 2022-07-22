class CreateCompetitionResults < ActiveRecord::Migration[7.0]
  def change
    create_table :competition_results do |t|
      t.references :sporter, null: false, foreign_key: true
      t.references :competition, null: false, foreign_key: true
      t.integer :place

      t.timestamps
    end
  end
end
