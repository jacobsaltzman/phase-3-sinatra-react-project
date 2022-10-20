class Review < ActiveRecord::Base

  belongs_to :user #one to one
  belongs_to :movies #one to one
 

end
