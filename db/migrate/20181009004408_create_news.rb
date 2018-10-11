class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :title
      t.text :body
      t.datetime :date
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
