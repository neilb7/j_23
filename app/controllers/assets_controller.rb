class AssetsController < ApplicationController
  def index
    @assets = Asset.all
  end

  def new
    @asset = Asset.new
  end

  def create
    @asset = Asset.create(asset_params)

    if @asset.save
      redirect_to @asset
    else
      render 'new'
    end  

  end

  def show
    @asset = Asset.find(params[:id])
  end

  def edit
    @asset = Asset.find(params[:id])
  end

  def update
    @asset = Asset.find(params[:id])

    if @asset.update(asset_params)
      redirect_to @asset
    else 
      render 'edit'
    end  
  end

  def destroy
    @asset = Asset.find(params[:id])
    @asset.destroy
    redirect_to assets_path
  end

  private
    def asset_params
      params.require(:asset).permit(:name, :video)
    end
end
