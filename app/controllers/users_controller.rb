class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @current_user = current_user.:id
        @user_object = User.where(id: @current_user)
    end
end