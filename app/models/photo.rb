class Photo < ApplicationRecord
  belongs_to :user
  include ImageUploader::Attachment.new(:image)
   acts_as_votable
   has_many :comments


    def self.search(search)
      where(['caption LIKE ?', "%#{search}%"])
    end
end
