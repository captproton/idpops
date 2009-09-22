class Image < ActiveRecord::Base
  belongs_to :idea

  has_attached_file :graphic,
  		:storage => ENV['S3_BUCKET'] ? :s3 : :filesystem,
  		:s3_credentials => {
  			:access_key_id => ENV['S3_KEY'],
  			:secret_access_key => ENV['S3_SECRET']
  		},
  		:bucket => ENV['S3_BUCKET'],
  		:path => ":class/:id_partition/:basename.:extension",
  		:s3_permissions => "private"
end
