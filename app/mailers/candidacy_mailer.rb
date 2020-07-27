class CandidacyMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.candidacy_mailer.confirmation.subject
  #
  def confirmation
    @candidacy = params[:candidacy]
    @candidate = params[:candidate]

    mail(to: @candidate.email, subject: "Correo de prueba")
  end
end
