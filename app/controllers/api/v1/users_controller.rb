class Api::V1::UsersController < ApplicationController
    def index 
        users = User.all
        render json: users
    end

    private
    def user_params
        params.require(:user).permit(:name, :encrypted_password)
    end
end