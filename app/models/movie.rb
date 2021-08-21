class Movie < ApplicationRecord
  # one-to-one
  belongs_to :director
  belongs_to :distribution_company
  belongs_to :mpa_film_rating
  has_one :internet_rating

  # many-to-many
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :actors
end
