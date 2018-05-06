class VotesController < ApplicationController

  def destroy
  @vote = Vote.find(params[:id])
  @vote.destroy
  redirect_to question_path(params[:question_id])
  end
end
