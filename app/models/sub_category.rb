# encoding: UTF-8
class SubCategory < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  belongs_to :category
  has_many :products
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200#" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"],
                                            :message =>  "فرمت عکس صحیح نیست"
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
end
