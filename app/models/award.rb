class Award < ActiveRecord::Base

  belongs_to :house  #only unique awards which each belong to different houses


end