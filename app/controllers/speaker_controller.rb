class SpeakerController < ApplicationController
  def index
    @speakers= Speaker.all
  end

  def new
    @speaker= Speaker.new
  end
   def show
    id=params[:id]
    @speaker= Speaker.find(id)
  end

  def create
    @speaker= Speaker.new
    @speaker.lastName=params[:speaker][:lastName]
    @speaker.firstName=params[:speaker][:firstName]
    @speaker.resume=params[:speaker][:resume]
    @speaker.info=params[:speaker][:info]
    @speaker.photo=params[:speaker][:photo]
    @speaker.email=params[:speaker][:email]
    @speaker.country=params[:speaker][:country]
    @speaker.phone=params[:speaker][:phone]
    if @speaker.save 
      redirect_to  speaker_index_path
      
    else 
      render "new"  
  end
  end

  def edit
    id=params[:id]
    @speaker= Speaker.find(id)
  end

  def update
    id=params[:speaker][:id]
    @speaker= Speaker.find(id)
    @speaker.lastName=params[:speaker][:lastName]
    @speaker.firstName=params[:speaker][:firstName]
    @speaker.resume=params[:speaker][:resume]
    @speaker.info=params[:speaker][:info]
    @speaker.photo=params[:speaker][:photo]
    @speaker.email=params[:speaker][:email]
    @speaker.country=params[:speaker][:country]
    @speaker.phone=params[:speaker][:phone]
    if @speaker.save 
      redirect_to  speaker_index_path
    else 
      render "edit"  
  end
  end

  def destroy
    id=params[:id]
    speaker= Speaker.find(id)
    speaker.destroy
    redirect_to  speaker_index_path
  end
end
