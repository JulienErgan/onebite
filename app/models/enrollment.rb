class Enrollment < ApplicationRecord
  belongs_to :course
  belongs_to :user
  validates :start_date, presence: true
  validates :competion_status, inclusion: { in: (0..100) }, numericality: true
end