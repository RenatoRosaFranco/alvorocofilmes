# frozen_string_literal: true
class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]
  respond_to	  :html, :json, :js

  def index
  	@movies = Movie.all
  	respond_with @movies
  end

  def show
  	respond_with @movie
  end

  private
  	def set_movie
  		@movie = Movie.find params[:id]
  	end
end
