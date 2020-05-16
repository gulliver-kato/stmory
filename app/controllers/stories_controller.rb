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
      @story.parts.build
    else
      @story = Story.new
      @story.parts.build
    end
  end

  def confirm
    @story = Story.new(story_params)
    @story.parts.build
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
    @story.destroy
    @story.parts.build
    respond_to do |format|
      format.html { redirect_to stories_url, notice: 'Story was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
  def set_story
    @story = Story.find(params[:id])
  end

  def story_params
    params.require(:story).permit(:admin_title, :title, :thumbnail_image, :thumbnail_image_cache, parts_attributes: [:text, :image, :story_id, :image_cache, :_destroy])
  end
end
