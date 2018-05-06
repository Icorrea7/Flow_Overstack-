class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"
  end
end
