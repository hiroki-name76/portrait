class PostsController < ApplicationController
	def new 
		@post = current_user.created_posts.build
	end

	def create
		@post = current_user.created_posts.build(post_params)
		if @post.save
			redirect_to @post, notice: 'post your work!!'
		else
			render :new
		end
	end

	private

	def post_params
		params.require(:post).permit(
			:name, :content, :post_image
			)
	end
end
