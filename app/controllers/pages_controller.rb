class PagesController < ApplicationController
   def user
	  if params[:todo]
		 @todo=params["todo"]
	  end

	  target = User.find(2)
	  latitude= target.latitude
	  longitude=target.longitude
	  gon.latitude=latitude
	  gon.longitude=longitude

   end

   def home
   end

   def create
	  userid = params[:userid]
	  latitude = params[:latitude]
	  longitude = params[:longitude]
	  user = User.update(userid, :latitude => latitude, :longitude => longitude)
	  render :json => user


   end

end
