class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user

  scope :approved, -> { where(approved: true) }
  scope :pending, -> { where(approved: false) }
end
