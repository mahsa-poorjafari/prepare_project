# encoding: UTF-8
class Gallery < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :image, :styles => { :original => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
end
