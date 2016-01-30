class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.create(picture_params)
    if @picture.save
      redirect_to pictures_path
    else
      render :new
    end
  end

  def show
    @picture = Picture.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end

end
