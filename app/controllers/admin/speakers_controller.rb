class Admin::SpeakersController < Admin::ApplicationController
  def index
    @speakers = Speaker.all.order(:speech_day, :speech_time)
    @days = Speaker.all.order(:speech_day, :speech_time).collect(&:speech_day).uniq

  end

  def new
    @speaker = Speaker.new
  end

  def create
    @speaker = Speaker.new speaker_params
    if @speaker.save
      redirect_to admin_speakers_path
    else
      binding.pry
      flash.now[:error] = @speaker.errors.full_messages.join('<br>')
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
                                        :first_name_en, 
                                        :last_name, 
                                        :last_name_en,
                                        :company, 
                                        :position, 
                                        :speaker_description,
                                        :speaker_description_en,
                                        :speech_title,
                                        :speech_title_en,
                                        :speech_description,
                                        :speech_description_en,
                                        :speech_time,
                                        :speech_day,
                                        :status,
                                        :avatar,
                                        :top)
      end
end
