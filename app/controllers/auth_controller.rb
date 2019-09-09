class AuthController < ApplicationController
    def login 
        user = User.find_by(name: params[:name])
        render json: {user: user}
    end 

    def autologin
        user_id = request.headers['Authorization']
        user = User.find(user_id)
        render json: user
    end
end
