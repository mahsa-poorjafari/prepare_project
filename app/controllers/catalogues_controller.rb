# encoding: UTF-8
class CataloguesController < ApplicationController
  before_action :set_catalogue, only: [:show, :edit, :update, :destroy]
  before_filter :check_autentication

  # GET /catalogues
  # GET /catalogues.json
  def index
    @catalogues = Catalogue.all
  end

  # GET /catalogues/1
  # GET /catalogues/1.json
  def show
  end
  
  def download     
    @image = Catalogue.find(params[:id])
    send_file @image.image.path,
              :filename => @image.image_file_name,
              :type => @image.image_content_type,
              :disposition => 'attachment'    
  end

  # GET /catalogues/new
  def new
    @catalogue = Catalogue.new
  end

  # GET /catalogues/1/edit
  def edit
  end

  # POST /catalogues
  # POST /catalogues.json
  def create
    @catalogue = Catalogue.new(catalogue_params) 
    
    @catalogue.save
    render action: 'index'
    
  end

  # PATCH/PUT /catalogues/1
  # PATCH/PUT /catalogues/1.json
  def update
    respond_to do |format|
      if @catalogue.update(catalogue_params)
        format.html { redirect_to @catalogue, notice: 'Catalogue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @catalogue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogues/1
  # DELETE /catalogues/1.json
  def destroy
    @catalogue.destroy
    respond_to do |format|
      format.html { redirect_to catalogues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogue
      @catalogue = Catalogue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogue_params
      params.require(:catalogue).permit(:title_fa, :title_en, :image)
    end
end
