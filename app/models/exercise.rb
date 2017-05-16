class Exercise < ApplicationRecord
  belongs_to :workout
  has_many :set_ofs

  validates :name, presence: true
end
