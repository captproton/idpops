class Idea < ActiveRecord::Base
  has_many :likings
  has_many :belivers, :through => :likings, :source => :user
  belongs_to :imaginer, :class_name => "User", :foreign_key => "imaginer_id"
    
  if CONFIG['s3']
    has_attached_file :photo, :storage => :s3,
                      :path => ":class/:id_partition/:basename.:extension",
                      :bucket => CONFIG['s3_bucket_name'], # TODO is there a way to share this between models?
                      :s3_credentials => { :access_key_id => CONFIG['s3_access_id'], :secret_access_key => CONFIG['s3_secret_key'] },
                      :s3_headers => { 'Cache-Control' => 'max-age=315576000', 'Expires' => 10.years.from_now.httpdate }
  else
    has_attached_file :photo, :storage => :filesystem, :url => "/photos/:filename",
    :styles  => { :large_thumb => "200x150>", :original => "800x600>"}
    
  end
  
  
end
