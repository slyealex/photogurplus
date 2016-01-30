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

  def edit

  end

  def update

  end

  def destroy

  end

  private

end
