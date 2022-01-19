class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.string :post
      t.string :entreprise
      t.string :date
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
