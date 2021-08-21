class MpaFilmRating < ApplicationRecord
  # one-to-many
  has_many :movies
end
