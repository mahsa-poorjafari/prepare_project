# encoding: UTF-8
class Product < ActiveRecord::Base
  has_many :pictures
  accepts_nested_attributes_for :pictures, :allow_destroy => true
  belongs_to :category
  extend FriendlyId
  friendly_id :title
end
