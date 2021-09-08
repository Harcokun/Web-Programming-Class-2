class PostController < ApplicationController
  def create
  	@received_msg = params[:msg].to_s rescue nil
  	@is_null_msg = @received_msg.nil?
  	@received_id = Integer(params[:user_id]) rescue nil
  	if !@received_id.nil? && @received_id <= User.count
  		@is_valid_id = true
  	else
  		@is_valid_id = false
  	end
  	
  	if @is_valid_id
  		@p = Post.create
  		@p.user_id = @received_id
  		if !@is_null_msg
  			@p.msg = @received_msg
  		else
  			@p.msg = ""
  		end
  		@p.save	
  	end
  		
  end
end
