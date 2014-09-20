class ProductFoldersController < ApplicationController
  before_action :set_product_folder, only: [:show, :edit, :update, :destroy]

  # GET /product_folders
  # GET /product_folders.json
  def index
    @product_folders = ProductFolder.all
  end

  # GET /product_folders/1
  # GET /product_folders/1.json
  def show
  end

  # GET /product_folders/new
  def new
    @product_folder = ProductFolder.new
  end

  # GET /product_folders/1/edit
  def edit
  end

  # POST /product_folders
  # POST /product_folders.json
  def create
    @product_folder = ProductFolder.new(product_folder_params)

    respond_to do |format|
      if @product_folder.save
        format.html { redirect_to @product_folder, notice: 'Product folder was successfully created.' }
        format.json { render action: 'index', status: :created, location: @product_folder }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_folders/1
  # PATCH/PUT /product_folders/1.json
  def update
    respond_to do |format|
      if @product_folder.update(product_folder_params)
        format.html { redirect_to @product_folder, notice: 'Product folder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_folder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_folders/1
  # DELETE /product_folders/1.json
  def destroy
    @product_folder.destroy
    respond_to do |format|
      format.html { redirect_to product_folders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_folder
      @product_folder = ProductFolder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_folder_params
      params.require(:product_folder).permit(:title_en, :title_fa, :product_id)
    end
end
