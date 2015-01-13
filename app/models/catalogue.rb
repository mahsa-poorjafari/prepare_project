# encoding: UTF-8
class Catalogue < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
  
  validates :title_en, :title_fa, :presence => {:message => 'عنوان را وارد کنید.'}
  validates :title_en, :title_fa, :uniqueness => {:message => 'عنوان تکراری است'}
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
end
