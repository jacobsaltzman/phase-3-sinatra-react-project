class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create table :reviews do |t|
      t.integer :movie_id
      t.integer :user_id
      t.string :comments
      t.integer :user_rating
      t.integer :scare_scale
      t.timestamps
    end
  end
end
