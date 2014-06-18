# encoding: UTF-8
class Certification < ActiveRecord::Base  
  validates :title_fa, :title_en, :presence => {:message => 'عنوان گواهینامه را وارد کنید.'}
  belongs_to :category
  has_attached_file :image, :styles => { :large => "1000x1000>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png" , "image/gif"],
                                            :message =>  "فرمت عکس صحیح نیست"
  
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
  
end
