class House < ActiveRecord::Base

  has_many :awards #one-to-many relationship where a house can earn multiple unique awards


end