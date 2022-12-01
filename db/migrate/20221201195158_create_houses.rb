class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :title
      t.string :leader
      t.integer :members
      t.string :image

      t.timestamps

  end
end
