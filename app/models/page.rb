class Page < ActiveRecord::Base
  attr_accessible :name, :input_text, :slug, :parent_id
  has_ancestry
  
  def to_param
    "#{id}-#{slug}".parameterize
    
  end
end
