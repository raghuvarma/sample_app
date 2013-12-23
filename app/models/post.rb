class Post < ActiveRecord::Base
  #require 'carrierwave/orm/activerecord'
  attr_accessible :content, :name, :image
  mount_uploader :image, ImageUploader
end
