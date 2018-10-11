class CreateRegistereds < ActiveRecord::Migration[5.2]
  def change
    create_table :registereds do |t|
      t.date :regDate
      t.boolean :status
      t.boolean :checked
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
