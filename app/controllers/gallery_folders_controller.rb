class GalleryFoldersController < ApplicationController
  before_action :set_gallery_folder, only: [:show, :edit, :update, :destroy]

  # GET /gallery_folders
  # GET /gallery_folders.json
  def index
    @gallery_folders = GalleryFolder.all
  end

  # GET /gallery_folders/1
  # GET /gallery_folders/1.json
  def show
	@galleries = Gallery.where("g_folder_id = ?", @gallery_folder)
  end

  # GET /gallery_folders/new
  def new
    @gallery_folder = GalleryFolder.new        
    
  end

  # GET /gallery_folders/1/edit
  def edit
  end

  # POST /gallery_folders
  # POST /gallery_folders.json
  def create
    @gallery_folder = GalleryFolder.new(gallery_folder_params)

    
	if @gallery_folder.save	
		redirect_to :back		
		
	else	
		redirect_to action: 'new' 
        
      
    end
  end

  # PATCH/PUT /gallery_folders/1
  # PATCH/PUT /gallery_folders/1.json
  def update
    
    if @gallery_folder.update(gallery_folder_params)
        redirect_to action: 'index'
    else
        redirect_to action: 'edit'
        
     
    end
  end

  # DELETE /gallery_folders/1
  # DELETE /gallery_folders/1.json
  def destroy
    @gallery_folder.destroy
    respond_to do |format|
      format.html { redirect_to gallery_folders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery_folder
      @gallery_folder = GalleryFolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_folder_params
      params.require(:gallery_folder).permit(:title_fa, :title_en, :category_id)
    end
end
