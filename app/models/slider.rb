# encoding: UTF-8
class Slider < ActiveRecord::Base
  attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
  has_attached_file :image, :styles => { :small => "150x150",
                                        :gallery_size => {:geometry => "720x360^", :processors => [:jcropper]}}
  def cropping?
    !crop_x.blank? && !crop_y.blank? && !crop_w.blank? && !crop_h.blank?
  end
end
