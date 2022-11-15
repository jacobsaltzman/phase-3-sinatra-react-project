class Movie < ActiveRecord::Base

  has_many :reviews #one to many
  has_many :users, through: :reviews #many to many

  def avg_rating
    self.reviews.average(:user_rating)
  end

  def avg_scary
    self.reviews.average(:scare_scale)
  end


end
