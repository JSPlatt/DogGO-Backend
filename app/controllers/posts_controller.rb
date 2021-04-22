class PostsController < ApplicationController
  before_action only: [:show, :update, :destroy, :create]

  # GET /posts
  def index
    @posts = Post.all

    render json: @posts
  end

  # GET /posts/1
  def show
    render json: @post
  end

  # POST /posts
  def create
    @post = Post.create(post_params)
    
    if @post.save
      render json: @post

    else 
      render json: {"msg": "not created"}
    end 
 
  end

  # PATCH/PUT /posts/1
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private


    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit( :title, :message, :username, :user_id)
    end



    # def update
    #   if @user.update(user_params)
    #     render json: @user
    #   else
    #     render json: @user.errors, status: :unprocessable_entity
    #   end
    # end
end
