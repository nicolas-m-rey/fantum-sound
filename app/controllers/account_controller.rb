class AccountController < ApplicationController
    before_action :authenticate_user!
    def show
        @current_user = current_user.id
        @user_object = User.where(id: @current_user)
        
    end
end