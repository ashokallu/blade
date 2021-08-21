class DistributionCompany < ApplicationRecord
  # one-to-one
  belongs_to :country

  # one-to-many
  has_many :movies
end
