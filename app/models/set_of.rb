class SetOf < ApplicationRecord

  belongs_to :exercise

  validates :reps, :weight, presence: true

end
