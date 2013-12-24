class Post < ActiveRecord::Base
  #require 'carrierwave/orm/activerecord'
  attr_accessible :content, :name, :image, :remote_image_url
  mount_uploader :image, ImageUploader
end
