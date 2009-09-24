class Image < ActiveRecord::Base
  belongs_to :idea

  has_attached_file :graphic,
  		:storage => ENV['s3_bucket_name'] ? :s3 : :filesystem,
  		:s3_credentials => {
  			:access_key_id => ENV['s3_access_id'],
  			:secret_access_key => ENV['s3_secret_key']
  		},
  		:bucket => ENV['s3_bucket_name'],
  		:path => ":class/:id_partition/:basename.:extension",
  		:s3_permissions => "private"
end
