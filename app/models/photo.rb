class Photo < ApplicationRecord
  belongs_to :user
  include ImageUploader::Attachment.new(:image)
  acts_as_votable
end
