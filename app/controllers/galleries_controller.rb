class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]
  before_filter :check_autentication, only: [:new,:edit, :update, :destroy]
  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = Gallery.order(" created_at desc")
    @category = Category.all
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)

    
    if @gallery.save
      redirect_to  action: 'index'
    else
      redirect_to action: 'new'
    end
    
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update
    
    if @gallery.update(gallery_params)      
      redirect_to galleries_path
    else
      redirect_to :back
    end
    
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:category_id, :image, :description_fa, :description_en)
    end
end
