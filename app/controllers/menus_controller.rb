class MenusController < ApplicationController
  def edit
    @menu = Menu.where(jiro_id: params[:jiro_id])
  end

  def update; end
end
