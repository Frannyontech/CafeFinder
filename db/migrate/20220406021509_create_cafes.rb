class CreateCafes < ActiveRecord::Migration[5.2]
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :address
      t.integer :opening_hour
      t.integer :closing_hour
      t.float :latitude
      t.float :longitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
