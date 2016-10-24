# == Schema Information
#
# Table name: rides
#
#  id            :integer          not null, primary key
#  user_id       :integer
#  attraction_id :integer
#

class Ride < ActiveRecord::Base
  belongs_to :user
  belongs_to :attraction

  def take_ride(attraction)

  end


end
