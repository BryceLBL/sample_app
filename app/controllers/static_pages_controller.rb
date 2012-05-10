class StaticPagesController < ApplicationController
  def home
    @mytime = Time.now
    @namer = params[:n].to_s.capitalize
  end

  def help
  end
  
  def about
  end
end
