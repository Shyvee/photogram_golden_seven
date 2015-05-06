class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def new_form
  end

  def create_row
    z = Photo.new
    z.source = params["source"]
    z.caption = params["caption"]
    z.save
  end

  def destroy
    z = Photo.find(params["id"])
    z.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def show
   @photo_id = Photo.find(params["id"])
  end

  def edit_form
    z = Photo.new
    z.source = params["source"]
    z.caption = params["caption"]
    z.save
  end

end
