class Admin::SpeakersController < Admin::ApplicationController
  def index
    @speakers = Speaker.all.order(:speech_day, :speech_time)
      

  end

  def new
    @speaker = Speaker.new
  end

  def create
    @speaker = Speaker.new speaker_params
    if @speaker.save
      redirect_to admin_speakers_path
    else
      render :action => 'new'
    end
  end

  def edit
    @speaker = Speaker.find params[:id]
  end

  def update
    @speaker = Speaker.find params[:id]
    if @speaker.update speaker_params
      redirect_to admin_speakers_path
    else
      render :action => :edit
    end
  end

  def destroy
    @speaker = Speaker.find params[:id]
    @speaker.destroy
    redirect_to admin_speakers_path
  end

  def show
    @speaker = Speaker.find params[:id]
  end

  private
      def speaker_params
        params.require(:speaker).permit(:first_name, 
                                        :last_name, 
                                        :company, 
                                        :position, 
                                        :speaker_description,
                                        :speech_title,
                                        :speech_description,
                                        :speech_time,
                                        :speech_day,
                                        :status,
                                        :avatar)
      end
end
