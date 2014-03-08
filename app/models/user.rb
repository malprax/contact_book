class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable, , :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  
  attr_accessible :password, :password_confirmation, :remember_me, :username, :role
  validates_presence_of :username, :password, :role
  validates_confirmation_of :password  
  
  # def role_list
  #   %w{Admin Staff Teacher}    
  # end
  # 
  # def teacher?
  #   self == "Teacher"
  # end
  # 
  # def staff?
  #   self== "Staff"
  # end

  # def admin?
 #    self == "Admin"
 #  end
 

  
end
