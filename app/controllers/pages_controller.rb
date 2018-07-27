class PagesController < ApplicationController
   def user
	  if params[:todo]
		 @todo=params["todo"]
	  end
	  userid = params['userid']
	  if userid == 1
		 target = User.find(2)
	  else
		 target = User.find(1)
	  end
	  latitude= target.latitude
	  longitude=target.longitude
	  gon.latitude=latitude
	  gon.longitude=longitude
	  gon.userid = userid
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
