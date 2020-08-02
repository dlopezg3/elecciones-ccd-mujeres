class Sector < ApplicationRecord
  has_many :candidacies, dependent: :destroy
end
