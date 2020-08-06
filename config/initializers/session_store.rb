if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_genelab', domain: 'https://alexmaunder.github.io/genelab', expire_after: 2.days
else
  Rails.application.config.session_store :cookie_store, key: '_genelab', domain: 'http://localhost:3001'
end
