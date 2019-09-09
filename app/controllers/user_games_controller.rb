class UserGamesController < ApplicationController

    def index 
        user_game = UserGame.all  
        render json: user_game
    end 

    def create
        user_game = UserGame.new(user_game_params)
        user_game.save
        render json: user_game
    end

    def get_user_games
        user_game = UserGame.where(user_id: params[:user_id]).includes(:game).map{|r| r.game}
        render json: user_game
    end

    private
    def user_game_params
        params.require(:user_game).permit(:user_id,:game_id)
    end
end
