# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Shop::Application.configure do
  config.action_mailer.delivery_method = :smtp #smpt para enviar, test para salida por consola
  config.action_mailer.smtp_settings ={
    adress: "smtp.gmail.com",
    port:587,
    domain: "gmail.com",
    authentication: "plain",
    user_name: "juanxtrvideos@gmail.com",
    password: "Juan588266",
    enable_starttls_auto: true
  }
end
