class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games
    end

    def show_by_name
        game = Game.find_by(name: params[:name])
        render json: game
    end
end
