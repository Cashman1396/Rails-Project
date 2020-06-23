class Camp < ApplicationRecord
  has_many :activities
  has_many :comments, through: :activities
  has_many :assignments
  has_many :camp_counselors, through: :assignments
  validates :name, :location, :description, presence: true
end

