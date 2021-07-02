class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :clown
  def clown_name
    self.clown.name
  end
end
