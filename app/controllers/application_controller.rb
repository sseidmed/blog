class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # I18n.load_path += Dir["#{config.root}/lib/modules/#{module_name}/config/locales/*.yml"]
  #config.i18n.load_path += Dir["#{config.root}/lib/modules/#{module_name}/config/locales/*.yml"]
end
