class EventController < ApplicationController
  def index
    @events=Event.all
  end

  def new
    @event=Event.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
