class RidesController < ApplicationController
  def create

    user = User.find(session[:user_id])
    @ride = Ride.create(user:user, attraction:Attraction.find(params[:id]))
    flash[:notice] = @ride.take_ride
    redirect_to user_path(user)
  end
end
