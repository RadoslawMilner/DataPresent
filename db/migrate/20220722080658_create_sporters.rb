class CreateSporters < ActiveRecord::Migration[7.0]
  def change
    create_table :sporters do |t|
      t.string :name
      t.integer :age
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
