class Movie < ActiveRecord::Base

  has_many :reviews #one to many
  has_many :users, through :reviews #many to many

end
