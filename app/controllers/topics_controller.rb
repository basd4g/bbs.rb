class TopicsController < ApplicationController
  def new
  end

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def create
    @topic = Topic.new(topic_params)

    @topic.save
    redirect_to @topic
  end

  private
    def topic_params
      params.require(:topic).permit(:title,:description)
    end
end
