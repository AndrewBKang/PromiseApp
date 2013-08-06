class UsersController < ApplicationController
  
  def profile
    @resolution = Resolution.new()
  end
  
end
