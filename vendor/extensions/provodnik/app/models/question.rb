class Question < ActiveRecord::Base
  validates_presence_of :ordinal_nb
  validates_presence_of :title
  
  
end
