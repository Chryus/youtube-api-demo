class VideosController < ApplicationController

	def index
		@videos = Video.all
	end

	def new
		@video = Video.new
	end

	def show
		@video = Video.find(params[:id])
	end

	def create
		@video = Video.new(video_params)
		if @video.save
			redirect_to "/videos/#{@video.id}"
		else
			render 'new'
		end
	end

  def update
    @video = Video.find(params[:id])
    if @video.update_attributes(video_params)
      redirect_to "/videos"
    else
      render 'edit'
    end
  end

	def edit
    @video = Video.find(params[:id])
	end

  def destroy
    Video.find(params[:id]).destroy
    debugger
    redirect_to :action => 'index'
  end

	private
    # Use callbacks to share common setup or constraints between actions.
    # def set_video
    #   @video = Video.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:title, :artist, :year)
    end

end
