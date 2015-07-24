class HomesController < ApplicationController

  def index
  	# @articles = Article.all
  	@articles = Article.where("category_id = '1'").order('created_at DESC').limit(4)
  	@articles2 = Article.where("category_id = '2'").order('created_at DESC').limit(4)
  	@articles3 = Article.where("category_id = '3'").order('created_at DESC').limit(4)
  end

  def show
  	@articles = Article.find(params[:id])
  end

  def vendor
    @posts        = Post.where('active = "Yes" AND kolom = "1"').order('created_at DESC').limit('3')
    @postsrows    = Post.where('active = "Yes" AND kolom = "1"').order('created_at DESC').limit('3,6')
    
    @postscol2s   = Post.where('active = "Yes" AND kolom = "2"').order('created_at DESC').limit('3')
    @postsrowsc2s = Post.where('active = "Yes" AND kolom = "2"').order('created_at DESC').limit('3,6')

    @postscol3s   = Post.where('active = "Yes" AND kolom = "3"').order('created_at DESC').limit('3')
    @postsrowsc3s = Post.where('active = "Yes" AND kolom = "3"').order('created_at DESC').limit('3,6')
  end

  def guest
  	
  end

  def artikel
    
  end

  def Wedding
    
  end

  def event
    
  end

  def coupon
    
  end

  def contact
    
  end

end
