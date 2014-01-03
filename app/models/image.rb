class Image < ActiveRecord::Base
  attr_accessible :title, :picture
  
  has_attached_file :picture, # :default_url => "/images/:style/missing.png"
 ######## Ini upload yang disimpan di public assets########################### 
  :url => "/assets/images/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension",
  :styles => { :medium => "150x150" }
 ##############################################################################  
   
 ######## Ini upload yang disimpan di dropbox ################################
  # :storage => :dropbox,
#   :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
#   :styles => { :medium => "300x300" }, :dropbox_options => {
#   :path => proc { |style| "#{style}/#{id}_#{picture.original_filename}" }}
 #############################################################################
end
