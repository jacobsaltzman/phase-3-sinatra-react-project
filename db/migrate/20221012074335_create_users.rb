class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :icon
      t.integer :number_of_reviews
      t.timestamps
    end
  end
end
