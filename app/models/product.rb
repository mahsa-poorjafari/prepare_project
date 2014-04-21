class Product < ActiveRecord::Base
  has_many :pictures
  belongs_to :category
end
