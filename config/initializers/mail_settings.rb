if Rails.env.production?
  ActionMailer::Base.smtp_settings = {
    :address              => "smtp.gmail.com",
    :port                 => 587,
    :domain               => "dominio.com",
    :user_name            => "usuario_email",
    :password             => "password_aqui",
    :authentication       => "plain",
    :enable_starttls_auto => true
  }
end

