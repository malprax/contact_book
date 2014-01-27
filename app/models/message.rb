class Message < ActiveRecord::Base
  attr_accessible :name, :email, :messages  
  validates_presence_of :name, :email
  validates_length_of :name, :minimum => 3
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  
 
end
