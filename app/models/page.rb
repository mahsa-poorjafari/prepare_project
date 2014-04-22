# encoding: UTF-8
class Page < ActiveRecord::Base
  validates :title, :presence => {:message => 'عنوان صفحه متنی را وارد کنید.'}
  validates :title, :uniqueness => {:message => 'عنوان صفحه تکراری است'}
  extend FriendlyId  
  friendly_id :title
end
