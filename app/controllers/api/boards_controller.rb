class Api::BoardsController < ApplicationController
  def index
    @boards = Board.all
    render :index
  end

  def create
    @board = Board.new(board_params)

    if @board.save
      render :create, status: :created
    else
      @error = @board.errors.full_messages.join(', ')
      render 'api/shared/error', status: :unprocessable_entity
    end
  rescue ActionController::ParameterMissing
    @error = "Invalid board data provided"
    render 'api/shared/error', status: :unprocessable_entity
  end

  def show
  	@board = Board.find(params[:id])

  	render :show, status: 200

  	rescue ActiveRecord::RecordNotFound
  		@error = "Invalid board id provided"
  		render 'api/shared/error', status: 404
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end
end
