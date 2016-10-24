# == Schema Information
#
# Table name: attractions
#
#  id               :integer          not null, primary key
#  name             :string
#  tickets          :integer
#  nausea_rating    :integer
#  happiness_rating :integer
#  min_height       :integer
#

class Attraction < ActiveRecord::Base
  has_many :rides
  has_many :users, through: :rides
  # write associations here
end
