class CampCounselor < ActiveRecord::Base
  has_secure_password
  has_many :assignments
  has_many :activities, through: :assignments
  has_many :camps, through: :assignments
  has_many :comments

  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  


end 