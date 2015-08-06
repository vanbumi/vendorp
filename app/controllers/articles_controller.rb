class ArticlesController < ApplicationController
  
  layout 'admin'

  before_action :authenticate_admin!, except: [:show]

  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all.order('created_at DESC') 
  end

  def show
    # sidebar
    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')

    render layout: 'application'
  end

  def new
    @article = Article.new
    @categories = Category.all
  end

  def edit
    @categories = Category.all
    @category = Category.new
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :category, :category_id, :body, :image_url, :author, :harga_awal, :discount, :harga_sesudah, :time_awal, :time_akhir, :name, :vendor, :vendor_id, :description, :syarat, :info_vendor, :kolom, :admin_id)
    end

  # Membuat tanggal Indonesia

  def to_tanggal(mydate)
    # current_time = Time.now  
    # current_time.strftime("%B %d, %Y")  
    # => "March 13, 2014"

    
    
  end  

end
