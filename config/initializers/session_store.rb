if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: 'beattree'
  else
    Rails.application.config.session_store :cookie_store, key: 'beattree' 
  end