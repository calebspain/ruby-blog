class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    ####READ
    @posts = Post.all

    ####CREATE
    # @singlePost = Post.new({
    #   :title => "Calebs post",
    #   :description => "This is the desc",
    #   :likes => 34
    # })
    # @singlePost.save
    @singlePost = Post.create(title: "new tie", description: "This is the single line desc test", likes: 8)

    unless @singlePost.valid?
      render html: "#{@singlePost.errors.messages[:title]}"
    else
      render html: @singlePost
    end

    ####UPDATE
    # @updateSinglePost = Post.find_by(title: "fourth post")
    # @updateSinglePost.title = "Hey Updated Fourth"
    # @updateSinglePost.description = "Just changed whole post"
    # @updateSinglePost.likes = 234
    # @updateSinglePost.save
    # @updateSinglePost = Post.find_by(title: "third post")
    # @updateSinglePost.update(title: "Test chnge", description: "New Desc", likes: 4)

    ####DELETE
    # @deletePost = Post.find_by(title: "second post")
    # @deletePost.destroy
    # @deletePost = Post.where(title: "first post")
    # @deletePost.destroy_all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :likes)
    end
end
