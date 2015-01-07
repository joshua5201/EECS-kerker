class ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @resources = @course.resources
    respond_with(@resources)
  end

  def show
    @file = @resource.file
    send_file(@file.current_path, :filename => @file.identifier, :type => @file.content_type)
  end

  def new
    respond_with(@resource)
  end

  def edit
  end

  def create
    @resource = @course.resources.build(resource_params)
    @resource.save
    respond_with(@resource)
  end

  def update
    @resource.update(resource_params)
    respond_with(@resource)
  end

  def destroy
    @resource.destroy
    redirect_to course_path(@resource.course)
  end

  private
    def set_resource
      @resource = Resource.find(params[:id])
    end

    def find_course
      @course = Course.find(params[:course_id])
    end
    def resource_params
      params.require(:resource).permit(:name, :description, :file, :user_id, :course_id)
    end
end
