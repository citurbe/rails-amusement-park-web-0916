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

  def mood
    return "sad" if self.happiness == nil || self.nausea == nil
    if self.happiness < self.nausea
      "sad"
    else
      "happy"
    end
  end

end
