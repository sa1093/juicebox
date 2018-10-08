class AddImageToJuices < ActiveRecord::Migration[5.2]
  def change
    add_column :juices, :image, :string
  end
end
