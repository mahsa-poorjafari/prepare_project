# encoding: UTF-8
class Picture < ActiveRecord::Base
   
  belongs_to :product
  belongs_to :product_folder
  
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  
  validates_attachment :image, 
      :content_type => { :content_type => ["image/jpg", "image/jpeg", "image/png"], :message => "فرمت عکس صحیح می باشد." },
      :size => { :in => 0..1000.kilobytes , :message => "حجم تصویر بیشتر از 1000 کیلوبایت است."}
                                              
  has_attached_file :next_image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                              :message =>  "فرمت عکس صحیح نیست"
                                              
  

  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
  
end
