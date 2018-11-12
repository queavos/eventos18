class NewsController < ApplicationController
#before_action :authenticate_user!, only: [  :destroy]
  def index
    @news = New.all
  end

  def new
    @new=New.new
  end

  def create
    @new=New.new
    @new.title=params[:new][:title]
    @new.body=params[:new][:body]
    @new.date=params[:new][:date]
    @new.event_id=params[:new][:event_id]


    if @new.save
      redirect_to  news_index_path
    else
      render "new"
    end
  end

  def edit
    id=params[:id]
    @new=New.find(id)
  end

  def update
    id=params[:new][:id]
    @new=New.find(id)
    @new.title=params[:new][:title]
    @new.body=params[:new][:body]
    @new.date=params[:new][:date]
    @new.event_id=params[:new][:event_id]


    if @new.save
      redirect_to  news_index_path
    else
      render "new"
    end
  end

  def destroy
    id=params[:id]
    news=New.find(id)
    news.destroy
    redirect_to  news_index_path
  end
end
