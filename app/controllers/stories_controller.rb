class StoriesController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def index
    @story = Story.all
  end

  def show
  end

  def new
    @story = Story.new
  end

  def confirm
    @story = Story.new(story_params)
  end

  def edit
  end

  def create
    Story.create(params[:story])
    redirect_to new_story_path
  end

  def update
  end

  def destroy
  end


  private
  def set_story
    @story = Story.find(params[:id])
  end

  def sotry_paramas
    params.require(:sotry).permit(:admin_title, :title)
  end
end
