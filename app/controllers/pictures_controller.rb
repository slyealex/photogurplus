class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture(picture_params)
    if @picture.save
      redirect_to picture_path
    else
      render :new
    end
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

end
