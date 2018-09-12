class CreateJuices < ActiveRecord::Migration[5.2]
  def change
    create_table :juices do |t|
      t.string :name
      t.integer :capacity
      t.integer :price

      t.timestamps
    end
  end
end
