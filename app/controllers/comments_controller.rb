# class CommentsController < ApplicationController
# 	def index
# 		@photo = Photo.find(params[:photo_id])
# 		@comments = Comment.all
# 		@comment = Comment.new
		
# 	end

# 	def create
# 	end
# end


class CommentsController < ApplicationController
  def index
    @photo = Photo.find(params[:photo_id])
    @comments = Comment.new
  end
  def create
    @photo = Photo.find(params[:photo_id])
    @photo.comments.create(comment_params)
    redirect_to photo_path(@photo)
  end
  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end