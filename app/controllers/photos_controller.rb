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
    @photo = Photo.find(params["id"])
  end

  def update_row
    z = Photo.find(params["id"])
    z.source = params["source"]
    z.caption = params["caption"]
    z.save

    redirect_to("http://localhost:3000/photos/#{z.id}")
  end

end
