class InternetRating < ApplicationRecord
  # one-to-one
  belongs_to :movie
end
