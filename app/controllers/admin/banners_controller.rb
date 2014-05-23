class Admin::BannersController < Admin::ApplicationController
  before_action :set_banner, only: [:show, :edit, :update, :destroy]

  # GET /banners
  # GET /banners.json
  def index
    @banners = Banner.all
  end

  # GET /banners/1
  # GET /banners/1.json
  def show
    @banner = Banner.find params[:id]
  end

  # GET /banners/new
  def new
    @banner = Banner.new
  end

  # GET /banners/1/edit
  def edit
    @banner = Banner.find params[:id]
  end

  # POST /banners
  # POST /banners.json
  def create
    @banner = Banner.new banner_params 
      if @banner.save
        redirect_to admin_banners_path
      else
        render :action => 'new'
      end
    
  end

  # PATCH/PUT /banners/1
  # PATCH/PUT /banners/1.json
  def update
    @banner = Banner.find params[:id]
    if @banner.update banner_params
      redirect_to admin_banners_path
    else
      render :action => :edit
    end
  end

  # DELETE /banners/1
  # DELETE /banners/1.json
  def destroy
    @banner = Banner.find params[:id]
    @banner.destroy
    redirect_to admin_banners_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banner
      @banner = Banner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banner_params
      params.require(:banner).permit(:name,  
                                     :banner_image,
                                     :url)
    end
end
