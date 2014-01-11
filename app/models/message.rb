include ActiveModel::Validations
include ActiveModel::Conversion
include ActiveModel::Naming

#attr_accessible :name, :email, :subject, :body
#validates :name, :email, :subject, :body, :presence => true
#validates :email, :format => {:with => %r{.+@.+\..+}}, :allow_blank => true

def initialize(attributes = {})
  attributes.each do |name, value|
    send("#{name}=", value)
  end
  def persisted?
    false    
  end
  
end