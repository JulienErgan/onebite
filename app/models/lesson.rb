class Lesson < ApplicationRecord
  belongs_to :chapter
  # validates :name, presence:true
end