class VendorsController < ApplicationController
  
  layout 'vendor_layout'
  before_action :authenticate_vendor!, :except => [:frontview]

  before_action :set_vendor, only: [:show, :edit, :update, :destroy, :singlepost]

  # GET /vendors
  # GET /vendors.json
  def index
    unless current_vendor.supervendor
      redirect_to vendors_page_path
    end

    @vendors = Vendor.all

    @vendors = Vendor.all
      if params[:search]
        @vendors = Vendor.search(params[:search]).order("created_at DESC")
      else
        @vendors = Vendor.all.order('created_at DESC')
    end
    
  end

  def page
  end

  def member
    unless current_vendor.statusta == 'Paid'
      redirect_to vendors_restrictarea_path
    end
  end

  def restrictarea
    # render layout: false
  end

  def pricelist
    
  end

  def frontview

    # @posts = Post.all
    @posts        = Post.where('active = "Yes" AND kolom = "1"').order('created_at DESC').limit('3')
    @postsrows    = Post.where('active = "Yes" AND kolom = "1"').order('created_at DESC').limit('3,6')
    
    @postscol2s   = Post.where('active = "Yes" AND kolom = "2"').order('created_at DESC').limit('3')
    @postsrowsc2s = Post.where('active = "Yes" AND kolom = "2"').order('created_at DESC').limit('3,6')

    @postscol3s   = Post.where('active = "Yes" AND kolom = "3"').order('created_at DESC').limit('3')
    @postsrowsc3s = Post.where('active = "Yes" AND kolom = "3"').order('created_at DESC').limit('3,6')
        
    render layout: 'application'
    
  end

  def singlepost
    # @posts = Post.all
    # @posts = Post.find(params[:id])

    render layout: 'application'
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
    @galleries = Gallery.all
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
   
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to @vendor, notice: 'Vendor was successfully created.' }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to vendors_url, notice: 'Vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def search
  #   title = params[:title]
  #   company = params[:company]
  #   location_id = params[:location_id]
  #   @posts = Post.search(title, company, location_id)
  # end

  def search
    city = params[:city]
    section_id = params[:section_id]
    @vendors = Vendor.search(city, section_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
      # @posts  = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:name, :vendor_category, :image_url, :contactp, :address, :city, :website, :social, :social2, :social3, :social4, :description, :supervendor, :section_id)
    end
    
end
