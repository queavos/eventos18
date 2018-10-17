class EventController < ApplicationController
  def index
    @events=Event.all
  end

  def new
    @event=Event.new
  end

  def create
     @event=Event.new
    @event.user_id=params[:event][:user_id]
    @event.name=params[:event][:name]
    @event.dateStart=params[:event][:dateStart]
    @event.dateEnd=params[:event][:dateEnd]
    @event.description=params[:event][:description]
    @event.status=params[:event][:status]


    if @event.save 
      redirect_to  event_index_path
    else 
      render "new"  
  end
  end

  def edit
    id=params[:id]
    @event=Event.find(id)
  end

  def update
    id=params[:event][:id]
    @event=Event.find(id)
    @event.user_id=params[:event][:user_id]
    @event.name=params[:event][:name]
    @event.dateStart=params[:event][:dateStart]
    @event.dateEnd=params[:event][:dateEnd]
    @event.description=params[:event][:description]
    @event.status=params[:event][:status]


    if @event.save 
      redirect_to  event_index_path
    else 
      render "new"  
  end
  end
  

  def destroy
    id=params[:id]
    event=Event.find(id)
    event.destroy
    redirect_to  event_index_path
  end
end
