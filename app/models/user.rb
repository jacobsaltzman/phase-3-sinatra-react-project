class User < ActiveRecord::Base

  has_many :reviews
  #user class is a model for, foremost, myself and Nikki, but additional users in the future.
  #each user will have many reviews and ratings of movies. 
  #each user will have a name and perhaps an icon/image and eventually a username and pw.

end