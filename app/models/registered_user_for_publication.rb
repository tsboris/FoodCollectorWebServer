class RegisteredUserForPublication < ActiveRecord::Base

  has_one 	:publication
  
  validates :publication_id, presence: true  
  validates :active_device_dev_uuid, presence: true, length: { maximum: 64 }
  validates :date_of_registration, presence: true  
  validates :publication_version, presence:true 

end
