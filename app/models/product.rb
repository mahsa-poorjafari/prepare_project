# encoding: UTF-8
class Product < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title
  has_many :pictures
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  belongs_to :category
  validates :title, :presence => {:message => 'عنوان محصول را وارد کنید.'}
  validates :title, :uniqueness => {:message => 'عنوان محصول تکراری است'}
end
