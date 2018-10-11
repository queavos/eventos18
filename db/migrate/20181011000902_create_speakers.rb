class CreateSpeakers < ActiveRecord::Migration[5.2]
  def change
    create_table :speakers do |t|
      t.string :lastName
      t.string :firstName
      t.text :resume
      t.text :info
      t.string :photo
      t.string :email
      t.string :country
      t.string :phone

      t.timestamps
    end
  end
end
