class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :size
      t.text :description
      t.string :serial, null: false

      t.timestamps null: false
    end

    add_index :items, :serial, unique: true
  end
end
ß