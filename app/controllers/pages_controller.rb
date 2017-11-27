class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    # Finding a page by id from the database and giving the view access
    @page = Page.find(params[:id])
  end

  def edit
    # Shows a pre filled form to edit the page
    @page = Page.find(params[:id])
  end

  def update
    # Take data from the form and update the page in our database
    @page = Page.find(params[:id])
    if @page.update(page_params)
      redirect_to page_path(@page)
    else
      render 'edit'
    end
  end

  def new
    # Shows a blank form to create a new page
    @page = Page.new
  end

  def create
    # Take data from the form and create a new page in our database
    @page = Page.new(page_params)
    if @page.save
      redirect_to pages_path
    else
      render 'new'
    end
  end

  def destroy
    # finds the page by ID and removes it from the database
    Page.find(params[:id]).destroy
    redirect_to pages_path
  end

  private

  def page_params
    params.require(:page).permit(:title, :author, :content, :public)
  end

end
