class HomesController < ApplicationController

  def index
  	# @articles = Article.all
  	@articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
  	@articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
  	@articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(2)
    @articles3a = Article.where("category_id = '3'").order('created_at DESC').limit('2,2')

    # Wedding-day
    @articles4 = Article.where("category_id = '7'").order('created_at DESC').limit(1)
    @articles4a = Article.where("category_id = '7'").order('created_at DESC').limit('1,5')
    @articles5 = Article.where("category_id = '8'").order('created_at DESC').limit(1)
    @articles5a = Article.where("category_id = '8'").order('created_at DESC').limit('1,5')
    
    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')

    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    @vendors = Vendor.all

    # main-slider
    @mainslides1 = Mainslide.where("slidenumber = '1' AND active = 'Y' ").limit('1')
    @mainslides2 = Mainslide.where("slidenumber = '2' AND active = 'Y' ").limit('1')
    @mainslides3 = Mainslide.where("slidenumber = '3' AND active = 'Y' ").limit('1')
    @mainslides4 = Mainslide.where("slidenumber = '4' AND active = 'Y' ").limit('1')
  end

  def show
  	@articles = Article.find(params[:id])

    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')

    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)    
  end

  def vendor
    @posts        = Post.where('active = "Yes" AND kolom = "1"').order('created_at DESC').limit('3')
    @postsrows    = Post.where('active = "Yes" AND kolom = "1"').order('created_at DESC').limit('3,6')
    
    @postscol2s   = Post.where('active = "Yes" AND kolom = "2"').order('created_at DESC').limit('3')
    @postsrowsc2s = Post.where('active = "Yes" AND kolom = "2"').order('created_at DESC').limit('3,6')

    @postscol3s   = Post.where('active = "Yes" AND kolom = "3"').order('created_at DESC').limit('3')
    @postsrowsc3s = Post.where('active = "Yes" AND kolom = "3"').order('created_at DESC').limit('3,6')

    # sidebar
    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')
   
  end

  def show_post
    @posts = Post.find(params[:id])
  end

  def artikel
    @articles2 = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    # artike baris
    @articles2rows = Article.where("category_id = '2' AND kolom = '1'").order('created_at DESC').limit('3,3')

    # sidebar
    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6) 
    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')
  end

  def wedding
    @articles4 = Article.where("category_id = '7'").order('created_at DESC').limit(1)
    @articles4a = Article.where("category_id = '7'").order('created_at DESC').limit('1,5')
    @articles5 = Article.where("category_id = '8'").order('created_at DESC').limit(1)
    @articles5a = Article.where("category_id = '8'").order('created_at DESC').limit('1,5')
  
    # sidebar
    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6) 
    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')
  end

  def event

    @articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
    @articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
    @articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(2)
    @articles3a = Article.where("category_id = '3'").order('created_at DESC').limit('2,2')

    # sidebar
    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')

  end

  def coupon

    @articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
    @articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
    @articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(3)

    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    # previous article in sidebar
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
    @articles3sb = Article.where("category_id = '3'").order('created_at DESC').limit('4,3')

  end

  def contact
    
  end

  def vendor_search
    @vendor = Vendor.all
  end

  def brides
    
  end

end
