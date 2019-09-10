class UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user
    end

    def index
        users = User.all 
        render json: users
    end

    def signup
        user = User.new(name: params[:name], profile_pic: params[:profile_pic], bio: params[:bio])
        if user.save 
            render json: user
        else 
            render json: {errors: user.errors.full_messages}
        end    
    end
end
