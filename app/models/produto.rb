class Produto < ActiveRecord::Base
	has_attached_file :foto
	validates_attachment_content_type :foto, :content_type => /\Aimage\/.*\Z/
end
