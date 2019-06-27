class GamesController < ApplicationController
  # Add your GamesController code here
  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end

  def index
    @games = Game.all
    render json: @games, status: 200
  end

  def update
    @game = Game.update(game_params)
    render json: @game, status: 201
  end

  def show
    @game = Game.find(params[:id])
    render json: @game, status: 200
  end

  private

  def game_params

  end

end
