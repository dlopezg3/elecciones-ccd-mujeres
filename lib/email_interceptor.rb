class EmailInterceptor
  def self.delivering_email(message)
    message.to = ['proyectosweb@antioquia.gov.co']
  end
end
