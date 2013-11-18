class BasesController < ApplicationController
  def index
    @bases = Base.all
  end

  def new
    @base = Base.new
  end

  def create
    @base = Base.new(base_params)
    @base.save

    flash.notice = "New base #{@base.name} created!"
    redirect_to bases_path
  end

  def show
    @base = Base.find(params[:id])
    @bases = Base.all
  end

  def edit
    @base = Base.find(params[:id])
  end

  def update
    @base = Base.find(params[:id])
    @base.update(base_params)
    flash.notice = "#{@base.name} was updated!"
    redirect_to bases_path
  end

  private 

  def base_params
    params.require(:base).permit(:name, :branch, :city, :state, :country, :lat, :long)
  end
end
