class ApplicationController < ActionController::Base
  #  root to: 'home#index'
  def after_sign_in_path_for(resource)
    account_path("1")
  end

end
