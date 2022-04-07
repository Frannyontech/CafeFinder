class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.string :description
      t.string :icon

      t.timestamps
    end
  end
end
