class Clown < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings

  def number_of_bookings
    self.bookings.count
  end
end
