# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :string
#  nausea          :integer
#  happiness       :integer
#  tickets         :integer
#  height          :integer
#  admin           :boolean          default(FALSE)
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :rides
  has_many :attractions, through: :rides
  # write associations here
end
