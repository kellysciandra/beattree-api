# #where we define what the cookie is going to be structured like 
  
# if Rails.env == "production"
#     Rails.application.config.session_store :cookie_store, key: "_beattree", domain: "beattree-api.herokuapp.com"
#   else
#     Rails.application.config.session_store :cookie_store, key: "_beattree"
#   end


# Be sure to restart your server when you modify this file.
Rails.application.config.session_store :cookie_store, key: '_beattree',
                                                      secure: Rails.env.production?