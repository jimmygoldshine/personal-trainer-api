require 'rails_helper'

RSpec.describe SetOf, type: :model do
  it { should belong_to(:exercise) }

  it { should validate_presence_of(:reps) }

  it { should validate_presence_of(:weight) }
end
