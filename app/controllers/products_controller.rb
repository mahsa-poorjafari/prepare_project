# encoding: UTF-8
class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_filter :check_autentication, only: [:new, :edit, :update, :destroy]
  # GET /products
  # GET /products.json
  def index
    @products = Product.order( "title_en DESC")
    @category = Category.all
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @pro_category = params[:category_id]
  end
  def download     
    @image = Picture.find(params[:picture_id])
    send_file @image.image.path,
              :filename => @image.image_file_name,
              :type => @image.image_content_type,
              :disposition => 'attachment'
    
  end
  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'مدل جدید اضافه شد.' }
        format.json { render action: 'show', status: :created, location: @product }
      else
        format.html { render action: 'new' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'ویرایش اطلاعات انجام شد.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    redirect_to :back
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :title_fa, :description_fa, :category_id, 
      :coming_soon, :image, :sub_category_id)
    end
end
