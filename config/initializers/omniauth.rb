Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "35804cca361871929c56", "3f378a855f99160543dd7619bfdcc3f2e5779b99"
  else
    provider :github,
      Rails.application.credentials.github[:client_id]
      Rails.application.credentials.github[:client_secret]
  end
end
