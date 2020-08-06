Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://alexmaunder.github.io', 'http://localhost:3001', 'http://localhost:3000' # this needs an explicit list on Heroku
    resource '*',
      :headers => :any,
      :methods => %i( get post put patch delete options head ),
      credentials: true
  end
end
