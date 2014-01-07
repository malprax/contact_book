class Page < ActiveRecord::Base
  attr_accessible :name, :input_text, :slug, :ancestry
  validates :slug, uniqueness: true, presence: true, exclusion: {in: %w[signup login]}
  before_validation :generate_slug
  has_ancestry
  attr_writer :current_page
  translates :name, :input_text, :slug, :ancestry
  
  
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
