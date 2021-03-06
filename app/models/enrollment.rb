class Enrollment < ApplicationRecord
  belongs_to :course
  has_one :platform, through: :course
  belongs_to :user
  # validates :start_date, presence: true
  # validates :completion_status, inclusion: { in: (0..100) }, numericality: true
  # validates :frequency, presence: true
end
