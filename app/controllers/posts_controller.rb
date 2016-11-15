class PostsController < ApplicationController


	def new
		@post = Post.new
	end

	def create
    	@post = Post.new post_params
    	# @post.user = current_user
    	if @post.save
    	  flash[:notice] = 'Post made!'
      	  redirect_to post_path(@post)
    	else
      		flash.now[:alert] = 'Please see errors below'
      		render :new
    	end
  	end


  	def show
  		@post = Post.find params[:id]
  	end

	def index
		@posts = Post.order(created_at: :desc)
	end


private

	 def post_params
      params.require(:post).permit([:title, :body])
     end


end
