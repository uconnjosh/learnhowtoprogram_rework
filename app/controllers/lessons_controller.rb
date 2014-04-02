class LessonsController < ApplicationController
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to '/admin'
  end

  def create
    Lesson.create(params[:lesson])
    redirect_to '/admin'
  end

  def edit
    @lesson = Lesson.find(params[:id])
    @sections = Section.all
    render :update
  end

  def update
    Lesson.find(params[:id]).update(params[:lesson])
    redirect_to '/admin'
  end

  def view
    @currLessonId = Lesson.find(params[:id]).id
    @stuffs = []
    @currentStuffsSpot = 0
    Section.all.each do |section|
      Lesson.all.each do |lesson|
        if lesson.section_id == section.id
          @stuffs << lesson.id
          if lesson.id == @currLessonId
            @currentStuffsSpot = @stuffs.length
          end
        end
      end
    end

    @lesson = Lesson.find(params[:id])
    @pastStuff = @currentStuffsSpot-1
    @nextStuff = @currentStuffsSpot+1
    render :view
  end
end

