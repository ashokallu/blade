class Genre < ApplicationRecord
  # many-to-many
  has_and_belongs_to_many :movies
end