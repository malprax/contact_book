class Contact 
   include ActiveModel::Validations
   include ActiveModel::Conversion
   extend ActiveModel::Naming
   
   attr_accessor :name, :email, :subject, :body
   
   validates_presence_of :name
   validates_format_of :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => true
   validates_length_of :message, :maximum => 500
   
   def initialize(attributes = {})
     attributes.each do |name, value|
       send("#{name}=", value)
     end     
   end
   
   def persisted?
     false     
   end
end
