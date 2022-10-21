class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :movie_id
      t.integer :user_id
      t.text :comments
      t.integer :user_rating
      t.integer :scare_scale
      
      t.timestamps
    end
  end
end
