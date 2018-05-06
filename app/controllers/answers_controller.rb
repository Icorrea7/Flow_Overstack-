class AnswersController < ApplicationController
  before_action :require_user, only: [:create, :sum]
  def create
    @answer = Answer.new(answer_params)
    @answer.user_id = current_user.id
    if (@answer.description == "")
      flash[:danger] = "La Respuesta debe incluir una descripción"
      redirect_to question_path(@answer.question_id)
    else
      @answer.save
      flash[:success] = "Tu Respuesta ha sido creada"
      redirect_to question_path(@answer.question_id)
    end
  end
  def sum
      answer=Answer.find(params[:id])
      answer.votes.create(user_id: current_user.id)
      redirect_to question_path(answer.question_id)
  end
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to questions_path
  end

  private
  def answer_params
    params.require(:answer).permit(:description, :question_id )
  end
end
