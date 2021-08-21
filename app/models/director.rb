class Director < ApplicationRecord
  # one-to-one
  belongs_to :country
  has_one :continent, through: :country
end
