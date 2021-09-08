class UserController < ApplicationController
  def read
  	@received_id = Integer(params[:user_id]) rescue nil
  	if !@received_id.nil? && @received_id <= User.count
  		@is_valid_id = true
  	else
  		@is_valid_id = false
  	end
  	
  	if @is_valid_id
  		@u = User.find(@received_id)
  		@p = @u.posts	
  	end
  end
end
