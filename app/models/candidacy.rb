class Candidacy < ApplicationRecord
  belongs_to :candidate
  belongs_to :sector

  has_one_attached :photo
  has_one_attached :document
  has_one_attached :confirmation_letter
  has_one_attached :organization_confirmation_letter
end
