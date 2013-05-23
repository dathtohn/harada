class WorksController < ApplicationController
  
  def new
    @collection = Collection.find(params[:collection_id])
    @work = @collection.works.build
  end

  def create
    @collection = Collection.find(params[:collection_id])
    @work = @collection.works.build
    @work.title = params[:title]
    @work.link = params[:link]
    if @work.save
      flash[:success] = "Work added."
      redirect_to @collection
    else
      render :new
    end
  end

  def show
    @collection = Collection.find(params[:collection_id])
    @work = @collection.works.find(params[:id])
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update_attributes(params[:work])
      flash[:success] = "Work updated."
      redirect_to @work.collection
    else
      render :edit
    end
  end 

  def destroy
    @work = Work.find(params[:id]) 
    @collection = @work.collection
    @work.destroy
    flash[:success] = "Work destroyed."
    redirect_to @collection
  end
end