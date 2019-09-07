class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def show_by_name
        game = game.find_by(name: params[:name])
        render json: game
    end
end
