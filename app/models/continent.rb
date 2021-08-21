class Continent < ApplicationRecord
  # one-to-many
  has_many :countries, dependent: :restrict_with_error

  # many-to-many
  has_many :directors, through: :countries
  has_many :actors, through: :countries

end
