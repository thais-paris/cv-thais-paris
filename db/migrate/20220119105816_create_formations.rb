class CreateFormations < ActiveRecord::Migration[6.1]
  def change
    create_table :formations do |t|
      t.string :date
      t.string :ecole
      t.text :diplome
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
