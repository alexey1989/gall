class Pick < ActiveRecord::Base
	belongs_to :category
	has_many :comments, dependent: :destroy
	has_many :pic_likes, dependent: :destroy, :class_name => "Like"
	has_attached_file :thumb, :styles => { :small => "128x128>" }

validates_attachment_presence :thumb
validates_attachment_size :thumb, :less_than => 5.megabytes
validates_attachment_content_type :thumb, :content_type => ['image/jpeg', 'image/png']
end
