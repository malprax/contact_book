class Message < ActiveRecord::Base
  validates_format_of :message, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i  
end
