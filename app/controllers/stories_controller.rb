class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def index
    @story = Story.all
  end

  def show
  end

  def new
    if params[:back]
      @story = Story.new(story_params)
    else
      @story = Story.new
    end
  end

  def confirm
    @story = Story.new(story_params)
  end

  def edit
  end

  def create
    @story = Story.new(story_params) 
    @story.save 
    redirect_to stories_path
  end

  def update
  end

  def destroy
  end


  private
  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:admin_title, :title, :thumbnail_image, :thumbnail_image_cache)
  end
end
