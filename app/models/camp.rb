class Camp < ApplicationRecord
  validates :name, presence: true, :location, presence: true, :description, presence: true

  has_many :activities
  has_many :comments, through: :activities
  has_many :assignments
  has_many :camp_counselors, through: :assignments
end

