class BasesController < ApplicationController
  def index
    @bases = Base.all
  end

  def show
    @base = Base.find(params[:id])
    @bases = Base.all
  end
end
