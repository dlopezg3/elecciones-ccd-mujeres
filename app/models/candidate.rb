class Candidate < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :organization, optional: true
  belongs_to :sector, optional: true

  has_one_attached :photo
  has_one_attached :document
  has_one_attached :confirmation_letter
  has_one_attached :organization_confirmation_letter
end
