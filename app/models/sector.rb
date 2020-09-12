class Sector < ApplicationRecord
  has_many :candidacies, dependent: :destroy
  has_many :votes, dependent: :destroy
end
