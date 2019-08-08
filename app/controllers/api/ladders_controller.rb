class Api::LaddersController < ApplicationController

  def index
    # @ladders = current_user.ladders
    @ladders = Ladder.all
    render json: @ladders
  end

  def show
    @ladder = Ladder.find_by_id(params[:id])
    render json: @ladder
  end

  def create
    @ladder = Ladder.new(ladder_params)
    binding.pry
    num_array = (1..params[:ladder][:numberOfPlayerInputs]).to_a

    if @ladder.save
      num_array.each {|n|
        Player.create(first_name: params[:ladder]["player#{n}"], ladder_id: @ladder.id, ladder_spot: n)
      }
      render json: @ladder
    else
      render json: {
        error: "This ladder failed to save"
      }
    end
  end

  def update
    @ladder = Ladder.find_by_id(params[:ladder][:id])
    num_array = (1..params[:ladder][:numberOfPlayerInputs]).to_a

    if @ladder.update(ladder_params)
      num_array.each {|n|
        player_id = params[:ladder]["spot#{n}"][:id]
        player = Player.find_by_id(player_id)
        player.update(first_name: params[:ladder]["spot#{n}"]['name'], ladder_id: @ladder.id, ladder_spot: n)
      }
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
      notice: "Ladder Successfully Deleted"
    }
  end

  private

  def ladder_params
    params.require(:ladder).permit(:title, :user_id)
  end
end
