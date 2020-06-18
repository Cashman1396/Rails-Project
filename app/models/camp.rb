class Camp < ApplicationRecord
  has_many :activities
  has_many :comments, through: :activities
  has_many :assignments
  has_many :camp_counselors, through: :assignments
  validates :name, presence: true, :location, presence: true, :description, presence: true
end

