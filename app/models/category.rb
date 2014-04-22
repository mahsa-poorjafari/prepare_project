# encoding: UTF-8
class Category < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "500x500>" , :medium => "300x300>", :small => "200x200>" }
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  has_many :products
  validates :title, :presence => {:message => 'عنوان گروه را وارد کنید.'}
  extend FriendlyId  
  friendly_id :title
end
