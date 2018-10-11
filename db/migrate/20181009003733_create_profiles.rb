class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :lastName
      t.string :firstName
      t.date :birthDate
      t.string :idNumber
      t.string :country
      t.string :geren
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
