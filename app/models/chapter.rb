class Chapter < ApplicationRecord
  belongs_to :course
  has_many :chapters
  validates :name, presence: true

  def start_time
    self.course.enrollments.last.start_date.start ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
  　#　start_date to start_time　
  end

end
