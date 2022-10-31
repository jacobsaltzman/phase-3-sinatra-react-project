class Review < ActiveRecord::Base

  belongs_to :user #one to one
  belongs_to :movie #one to one
 

end
