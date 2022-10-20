class User < ActiveRecord::Base

  has_many :reviews #one to many
  has_many :movies, through :reviews #many to many


end