class PagesController < ApplicationController
   def home
	  if params[:todo]
		 @todo=params["todo"]
	  end
   end

end
