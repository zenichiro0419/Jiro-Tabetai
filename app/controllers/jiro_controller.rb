class JiroController < ApplicationController

  def show
    @jiro = Jiro.find(params[:id])
  end
end
