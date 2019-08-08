class Api::PlayersController < ApplicationController

  def index
    @ladder = Ladder.find_by_id(params[:ladderId].to_i)
    @players = @ladder.players
    render json: @players
  end

  def create
    @player = Player.new(player_params)

    if @player.save
      render json: @player
    else
      render json: {
        error: "This player failed to save"
      }
    end
  end

  def update
    @player = Player.find_by_id(params[:playerId])

    if @player.update(player_params)
      render json: @player
    else
      render json: {
        error: "This Player Failed To Update"
      }
    end
  end

  def update_from_ladder
    ladder_spots = params[:ladderSpots]

    ladder_spots.each { |spot|
      player = Player.find_by_id(spot['player']['id'])
      player.update(ladder_spot: spot['spot'])
    }

    render json: {
      notice: "players updated in database"
    }

  end

  def destroy
    @player = Player.find_by_id(params[:playerId])
    @player.destroy

    render json: {
      notice: "Player Successfully Deleted",
      playerId: params[:playerId]
    }
  end

  private

  def player_params
    params.require(:player).permit(:name, :match_record, :ladder_spot, :ladder_id)
  end
end
