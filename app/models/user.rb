class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable, , :validatable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         
  attr_accessible :password, :password_confirmation, :remember_me, :username, :role
  
  
  def role_list
    %w{Admin Staff Teacher}    
  end
  
  def teacher?
    self._type == "Teacher"
  end

  def staff?
    self._type == "Staff"
  end

  def admin?
    self._type == "Admin"
  end
  
end
