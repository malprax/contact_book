class AddAttachmentPictureToImage < ActiveRecord::Migration
  def change
   
        change_table :images do |t|
          t.attachment :picture
        end

   
  end
end
