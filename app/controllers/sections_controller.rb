class SectionsController < ApplicationController
  def index
    @sections = Section.all
    render :index
  end
end
