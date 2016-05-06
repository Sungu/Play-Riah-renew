class Post < ActiveRecord::Base
  belongs_to :user
  has_many :applicants, dependent: :destroy
  mount_uploader :img, S3uploaderUploader
end
