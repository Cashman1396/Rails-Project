class CampCounselor < ActiveRecord::Base
  has_secure_password
  has_many :assignments
  has_many :activities, through: :assignments
  has_many :camps, through: :assignments
  has_many :comments

  validates :name, presence: true, :email, presence: true
  validates :name, uniqueness: true, :email, uniqueness: true
  


end 