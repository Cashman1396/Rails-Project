class Comment < ApplicationRecord
  belongs_to :activity
  belongs_to :camp_counselor, optional: true

  validates :title, presence: true, :content, presence: true
end
