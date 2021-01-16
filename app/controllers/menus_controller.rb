class MenusController < ApplicationController
  def edit
    menu = Menu.where(jiro_id: params[:jiro_id])
    @main_menus = menu.main_menu
    @option = menu.option_menu
  end

  def update; end
end
