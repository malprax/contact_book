class Message < ActiveRecord::Base
  attr_accessible :name, :email, :messages, :humanizer_answer, :humanizer_question_id
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  
 
end
