class Signup < ApplicationRecord
  belongs_to :camper
  belongs_to :activity

  validates :time, inclusion: {in: 0..23, message: 'of %{value} must be within the 24 hour clock'}
end
