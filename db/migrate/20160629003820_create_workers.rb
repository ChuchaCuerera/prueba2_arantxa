class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name, null: false 
      t.string :email

      t.timestamps null: false
    end
  end
end
