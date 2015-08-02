class HomesController < ApplicationController

  def index
  	# @articles = Article.all
  	@articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
  	@articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
  	@articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(3)
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('2,3')

    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)

  end

  def show
  	@articles = Article.find(params[:id])

    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
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
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
   
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
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')
  end

  def Wedding

    @articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
    @articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
    @articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(3)

    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    
  end

  def event

    @articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
    @articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
    @articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(3)

    # sidebar
    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')

  end

  def coupon

    @articles = Article.where("category_id = '1'").order('created_at DESC').limit(3)
    @articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(3)
    @articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(3)

    @sidebars = Sidebar.where("active = 'Y'").order('created_at DESC').limit(6)
    @articles2sb = Article.where("category_id = '2'").order('created_at DESC').limit('3,3')

  end

  def contact
    
  end

end
