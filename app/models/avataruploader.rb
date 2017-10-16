class AvatarUploader < ApplicationRecord
  include AvatarUploader::Attachment.new(:avatar) # adds an `avatar` virtual attribute
end