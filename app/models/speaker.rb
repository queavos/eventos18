class Speaker < ApplicationRecord
	has_many :conference
	mount_uploader :photo, SpeakerPhotoUploader
end
 