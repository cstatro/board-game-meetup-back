class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end
    def create
        game = Game.new(game_params)
        game.save 
        # render json: game
    end

    def show_by_name
        game = Game.find_by(name: params[:name])
        render json: game
    end
    private
    def game_params
        params.require(:game).permit(:name,:image,:max_players,:min_players,:max_playtime,:min_playtime)
    end

end
