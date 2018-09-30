# frozen_string_literal: true
class ProjectsController < ApplicationController
  before_action :set_project, only: [:show]
  respond_to :html, :json, :js

  def index
  	@projects = Project.all
  	respond_with @projects
  end

  def show
  	respond_with @project
  end

  private
  	def set_project
  		@project = Project.find params[:id]
  	end
end
