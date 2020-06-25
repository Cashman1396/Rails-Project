class Assignment < ApplicationRecord
  belongs_to :camp_counselor, optional: true
  belongs_to :activity
  belongs_to :camp, optional: true 

  validates :rating, presence: true

  def self.order_by_filled
    order(:filled)
  end 
    
end
