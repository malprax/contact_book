class Contact < ActiveRecord::Base
  validate_presence_of :name, :email, :phone, :address
end
