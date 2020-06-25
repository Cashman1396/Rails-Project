class Comment < ApplicationRecord
  belongs_to :activity
  belongs_to :camp_counselor, optional: true

  validates :title, :content, presence: true
end
