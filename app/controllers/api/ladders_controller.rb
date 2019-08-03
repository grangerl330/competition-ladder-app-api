class Api::LaddersController < ApplicationController

  def index
    # @ladders = current_user.ladders
    @ladders = Ladder.all
    render json: @ladders
  end

  def show
    @ladder = Ladder.find_by_id(params[:id])]
    render json: @ladder
  end

  def create
    @ladder = Ladder.new(ladder_params)

    if @ladder.save
      render json: @ladder
    else
      render json: {
        error: "This ladder failed to save"
      }
    end
  end

  def update
    @ladder = Ladder.find_by_id(params[:ladderId])

    if @ladder.update(ladder_params)
      render json: @ladder
    else
      render json: {
        error: "This Ladder Failed To Update"
      }
    end
  end

  def destroy
    @ladder = Ladder.find_by_id(params[:ladderId])
    @ladder.destroy

    render json: {
      notice: "Ladder Successfully Deleted",
      ladderId: params[:ladderId]
    }
  end

  private

  def ladder_params
    params.require(:ladder).permit(:size)
  end
end
