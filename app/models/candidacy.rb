class Candidacy < ApplicationRecord
  belongs_to :candidate
  belongs_to :sector

  has_one_attached :photo
  has_one_attached :document
  has_one_attached :confirmation_letter
  has_one_attached :organization_confirmation_letter

  after_create :send_confirmation_email

  private

  def send_confirmation_email
    CandidacyMailer.with(candidacy: self, candidate: self.candidate).confirmation.deliver_now
  end
end
