# encoding: UTF-8
class Reseller < ActiveRecord::Base
 
  validates :title_fa, :title_en, :uniqueness => {:message => 'عنوان نمایندگی تکراری است'}
  validates :title_fa, :title_en, :presence => {:message => 'عنوان نمایندگی را بنویسید'}
  
  def title
    I18n.locale == :fa ? self.read_attribute("title_fa") : self.read_attribute("title_en")
  end
end
