class Page < ActiveRecord::Base
  attr_accessible :name, :input_text, :slug, :parent_id
  has_ancestry
end
