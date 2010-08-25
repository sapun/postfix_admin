class IndexController < ApplicationController
  def index
	@post = Post.find_by_id('2')
  end
  def hello
  end
  def notice
    flash[:notice] = "Событие создано!"
    redirect_to :controller => "index"
  end
end

