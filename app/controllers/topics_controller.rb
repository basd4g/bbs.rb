class TopicsController < ApplicationController
  def new
  end

  def create
    render plain: params[:topic].inspect
  end
end
