# Preview all emails at http://localhost:3000/rails/mailers/candidacy_mailer
class CandidacyMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/candidacy_mailer/confirmation
  def confirmation
    candidacy = Candidacy.first
    candidate = candidacy.candidate

    CandidacyMailer.with(candidate: candidate, candidacy: candidacy).confirmation
  end
end
