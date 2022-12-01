class CreateAwards < ActiveRecord::Migration[6.1]
  def change
    create_table :awards do |t|
      t.string :award
      t.string :description
      t.string :icon
      t.integer :value
      t.integer :house_id

      t.timestamps 
  end
end
