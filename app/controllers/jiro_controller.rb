class JiroController < ApplicationController
  def show
    @jiro = Jiro.find(params[:id])
    @table_seasonings = @jiro.table_seasoning.pluck(:name)
    @main_menus = @jiro.main_menu
    @option_menus = @jiro.option_menu
  end
end
