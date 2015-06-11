class Relationship < ActiveRecord::Base
<<<<<<< HEAD
  attr_accessor :followed_id

  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"

  
  validates :follower_id, presence: true
  validates :followed_id, presence: true
=======
	belongs_to :follower, class_name: "User"
  	belongs_to :followed, class_name: "User"
  	validates :follower_id, presence: true
  	validates :followed_id, presence: true
>>>>>>> 566092c7e3f4c5c7786e43ea01c7934333535730
end
