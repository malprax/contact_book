class Page < ActiveRecord::Base
  attr_accessible :name, :input_text, :slug, :parent_id
  validates :slug, uniqueness: true, presence: true
  before_validation :generate_slug
  has_ancestry
  
  
  def to_param
     slug
  end 
  
  def generate_slug
    self.slug ||= name.parameterize    
  end
  
  def find_page
    @page = Page.find_by_slug(params[:id].split('/').last)
  end
end
