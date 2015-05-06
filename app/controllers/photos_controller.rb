class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
   @photo_id = Photo.find(params["id"])
  end

end
