class ComentariosController < ApplicationController
  before_action :require_user, only: [:create]
  def create
    @comentario = Comentario.new(comentario_params)
    @comentario.user_id = current_user.id
    @comentario.save
  end
  def comentario_params
    params.require(:comentario).permit(:descripcion, :comentable_id, :comentable_type )
  end
end
