class Actor < ApplicationRecord
  # one-to-one
  belongs_to :country
  has_one :continent, through: :country

  # many-to-many
  has_and_belongs_to_many :movies

  enum gender: {male: 'Male', female: 'Female', transgender: 'Transgender', other: 'Other'}
end
