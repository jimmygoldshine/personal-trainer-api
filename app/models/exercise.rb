class Exercise < ApplicationRecord
  belongs_to :workout
  has_many :set_ofs, dependent: :destroy

  validates :name, presence: true
end
