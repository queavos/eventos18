class CreateConferences < ActiveRecord::Migration[5.2]
  def change
    create_table :conferences do |t|
      t.string :title
      t.text :intro
      t.date :date
      t.time :time
      t.string :place
      t.references :event, foreign_key: true
      t.references :speaker, foreign_key: true

      t.timestamps
    end
  end
end
