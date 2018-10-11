class RolesController < ApplicationController
  def index
    @roles=Role.all
  end

  def new
    @role=Role.new
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
