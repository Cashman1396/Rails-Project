class Activity < ApplicationRecord
  has_many :assignments
  has_many :camp_counselors, through: :assignments
  has_many :comments
  belongs_to :camp

  validates :name, presence: true
  validates :name, uniqueness: true

  def self.sorted_asc
    order(name: :asc)
  end 
  
end
