class EmailInterceptor
  def self.delivering_email(message)
    message.to = ['dlopez.10g@gmail.com']
  end
end
