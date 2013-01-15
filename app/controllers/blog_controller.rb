class BlogController < ApplicationController
  def index 
    @nodebolgpost = Node.limit(5).all
    respond_to do |format|
      format.html
    #  format.json {render json:@blogpost}
    end
  end

  def show
    @blogpost = Bolgpost.find(params[:id])
    @comments = @blogpost.comments.limit(5).all
    respond_to do |format|
      format.json {render :json => {:blogpost => @blogpost,
                          :comments => @comments}}

    end 
  end
end
