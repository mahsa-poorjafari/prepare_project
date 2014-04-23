# encoding: UTF-8
class Category < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_fa
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  has_many :products
  validates :title_fa, :title_en, :uniqueness => {:message => 'عنوان گروه را وارد کنید.'}
  validates :title_fa, :title_en, :presence => {:message => 'عنوان گروه را وارد کنید.'}
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description_en")
  end
end
