class PostsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.create(post_params)
    redirect_to topic_path(@topic)
  end

  private
    def post_params
      params.require(:post).permit(:contributor, :text)
    end
end
