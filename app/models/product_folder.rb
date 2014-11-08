# encoding: UTF-8
class ProductFolder < ActiveRecord::Base
  extend FriendlyId  
  friendly_id :title_en
  has_many :pictures
  belongs_to :product
  validates :title_en, :title_fa, :product_id, :presence => {:message => 'عنوان را وارد کنید.'}
  validates :title_en, :title_fa, :uniqueness => {:message => 'عنوان تکراری است'}
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
end
