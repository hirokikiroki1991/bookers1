class SitesController < ApplicationController
  def show
  	@site = Site.find(params[:id])
  end

  def index
  
  end
  def new
  	@site = Site.find(params[:id])
  end

  def new
  	@site = Site.new
  	@sites = Site.all
  end

  def create
  	site = Site.new(site_params)
  	site.save
  	redirect_to site_path(site.id)
  end

  def edit
  	@site = Site.find(params[:id])
  end
  def update
  	site = Site.find(params[:id])
  	site.update(site_params)
  	redirect_to site_path(site.id)
  end
  def destroy
  	site = Site.find(params[:id])
  	site.destroy
  	redirect_to '/sites/new'
  end

private
 def site_params
 	params.require(:site).permit(:title, :body)
 end

end
