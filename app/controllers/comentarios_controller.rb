class ComentariosController < ApplicationController
  before_action :require_user, only: [:create]
  def create
    @comentario = Comentario.new(comentario_params)
    @comentario.user_id = current_user.id
    if @comentario.save
      if @comentario.comentable_type == "Answer"
        redirect_to question_path(params[:question_id])
      end
    else
      flash[:danger] = "El comentario no debe estar vacío"
      redirect_to question_path(params[:question_id])
    end

  end
  def comentario_params
    params.require(:comentario).permit(:descripcion, :comentable_id, :comentable_type )
  end
end
