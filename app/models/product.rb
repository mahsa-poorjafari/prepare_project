# encoding: UTF-8
class Product < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
  
  
  belongs_to :category
  belongs_to :sub_category
  has_many :pictures
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  validates :title, :title_fa, :presence => {:message => 'عنوان محصول را وارد کنید.'}
  validates :title_fa, :uniqueness => {:message => 'عنوان محصول تکراری است'}
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title")
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description")
  end
end
