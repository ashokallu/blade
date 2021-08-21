class Country < ApplicationRecord
  # one-to-one
  belongs_to :continent

  # one-to-many
  has_many :directors
  has_many :actors
end
