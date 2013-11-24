class BasesController < ApplicationController
  def index
    @bases = Base.by_branch
  end

  def new
    @base = Base.new
  end

  def create
    @base = Base.new(base_params)
    if @base.save
      flash.notice = "New base #{@base.name} created!"
      redirect_to bases_path
    else
      render :new
    end
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
    if @base.update(base_params)
      flash.notice = "#{@base.name} was updated!"
      redirect_to bases_path
    else
      render :edit
    end
  end

  def destroy
    @base = Base.find(params[:id])
    @base.destroy
    flash.notice = "#{@base.name} was deleted! BRAC is no good. :("
    redirect_to bases_path
  end

  private 

  def base_params
    params.require(:base).permit(:name, :branch, :city, :state, :country, :lat, :long, :image_filename)
  end
end
