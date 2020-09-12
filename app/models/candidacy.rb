class Candidacy < ApplicationRecord
  include ActionView::Helpers::UrlHelper

  belongs_to :candidate
  belongs_to :sector

  has_one_attached :photo
  has_one_attached :document
  has_one_attached :confirmation_letter
  has_one_attached :organization_confirmation_letter
  has_one_attached :autonomus_confirmation_letter
  has_one_attached :election_minute

  has_many :votes

  # after_create :send_confirmation_email

  validates :name, presence: true
  validates :last_name, presence: true
  validates :tax_id_number, presence: true
  validates :tax_id_number, presence: true
  validates :phone, presence: true
  validates :expertise, presence: true
  validates :organization, presence: true
  validates :value_proposition, presence: true
  validates :photo, presence: true
  validates :document, presence: true
  # validates :confirmation_letter, presence: true
  validates :organization_confirmation_letter, presence: true
  validates :election_minute, presence: true
  validates :disclaimer, acceptance: { message: 'Debes aceptar los términos y condiciones' }
  validates :rol, presence: true

  scope :validated, -> { where(validated: true)}

  def initials
    return if name.blank?

    "#{name} #{last_name}".split(" ").map { |word| word[0] }.reduce(:+)[0..1]
  end


  def cloudinary_url(object)
    return "Sin adjunto" unless object.attachment.present?

    link_to("Ver adjunto", object.service_url, target:"_blank").html_safe
  end

  private

  def send_confirmation_email
    # CandidacyMailer.with(candidacy: self, candidate: self.candidate).confirmation.deliver_now
  end
end
