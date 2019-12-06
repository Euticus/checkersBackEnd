class Api::V1::GamesController < ApplicationController
    def index 
        games = Game.all
        render json: games
    end

    def show 
        game = Game.find(params[:id])
        render json: game
    end 

    def new 
        game = Game.new
    end 

    def create 
        game = Game.create(user_id: params[:user_id], zeroturn: params[:zeroturn], board_array: params[:board_array])
        render json: game
    end

    def update
      game = Game.find(params[:id])
      game.update(user_id: params[:user_id], zeroturn: params[:zeroturn], board_array: params[:board_array])
      render json: game
        #puts params[:game][:board_array]
    end

    def destroy 
        Game.find(params[:id]).destroy
    end

    private
    def game_params
        params.require(:game).permit(:board_array, :user_id, :zeroturn)
    end
end