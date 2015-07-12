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
