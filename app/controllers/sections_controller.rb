class SectionsController < ApplicationController
  def welcome
    @lessons = Lesson.all
    render :welcome
  end

  def tableOfContents
    @sections = Section.all
    @lessons = Lesson.all
    render :index
  end

  def admin
    @sections = Section.all
    @lessons = Lesson.all
    @newSection = Section.new
    @newLesson = Lesson.new
    render :admin
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to '/admin'
  end

  def create
    Section.create(params[:section])
    redirect_to '/admin'
  end
end
