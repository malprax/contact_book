class Image < ActiveRecord::Base
  attr_accessible :title, :picture
  
  has_attached_file :picture, # :default_url => "/images/:style/missing.png"
  :url => "/assets/images/:id/:style/:basename.:extension",
   :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension",
    # :storage => :dropbox,
 #    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
     :styles => { :medium => "300x300" }
 #       , :dropbox_options => {
 #          :path => proc { |style| "#{style}/#{id}_#{picture.original_filename}" }}
end
