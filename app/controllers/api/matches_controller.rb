class Api::MatchesController < ApplicationController

  def index
    @player = Player.find_by_id(params[:playerId])
    @matches = @player.matches
    render json: @matches
  end

  def create
    @match = Match.new(match_params)

    if @match.save
      render json: @match
    else
      render json: {
        error: "This match failed to save"
      }
  end

  def update
    @match = Match.find_by_id(params[:matchId])

    if @match.update(match_params)
      render json: @match
    else
      render json: {
        error: "This Match Failed To Update"
      }
    end
  end

  def destroy
    @match = Match.find_by_id(params[:matchId])
    @match.destroy

    render json: {
      notice: "Match Successfully Deleted",
      matchId: params[:matchId]
    }
  end

  private

  def match_params
    params.require(:match).permit(:score, :result, :date, :player_id )
  end
end
