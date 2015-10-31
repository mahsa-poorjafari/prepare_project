# encoding: UTF-8
class Slider < ActiveRecord::Base
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  has_attached_file :image, :styles => { :large => "420x160",
                                        :gallery_size => {:geometry => "720x360^", :processors => [:jcropper]}}
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
  validates :image,  :presence => {:message => 'تصویر را وارد کنید.'}
  def cropping?
      p '123cropping'
     p  (!crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?)
     !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
  def description
    I18n.locale == :fa ? self.read_attribute("description_fa") : self.read_attribute("description_en")
  end
end
