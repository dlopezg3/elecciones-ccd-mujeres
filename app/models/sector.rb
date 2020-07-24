class Sector < ApplicationRecord
  has_many :candidates, dependent: :destroy
  has_many :candidacies, through: :candidates, dependent: :destroy
end
