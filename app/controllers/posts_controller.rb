class PostsController < ApplicationController
  http_basic_authenticate_with name: ENV['BASIC_USER'], password: ENV['BASIC_PASSWORD'], except: [:create]
  def create
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.create(post_params)
    redirect_to topic_path(@topic)
  end
  
  def destroy
    @topic = Topic.find(params[:topic_id])
    @post = @topic.posts.find(params[:id])
    @post.destroy
    redirect_to topic_path(@topic)
  end

  private
    def post_params
      params.require(:post).permit(:contributor, :text, :post_id)
    end
end
