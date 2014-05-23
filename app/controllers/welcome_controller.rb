class WelcomeController < ApplicationController
  def index
  	@speakers = Speaker.all.order(:speech_day, :speech_time)
  	@days = Speaker.all.order(:speech_day, :speech_time).collect(&:speech_day).uniq

  	@days_of_week = ["Понедельник", 
                    "Вторник", 
                    "Среда", 
                    "Четверг", 
                    "Пятница", 
                    "Суббота", 
                    "Воскресенье"]

    @banners = Banner.all
  end

  def index_en
    @speakers = Speaker.all.order(:speech_day, :speech_time)
    @days = Speaker.all.order(:speech_day, :speech_time).collect(&:speech_day).uniq

    @days_of_week_en = ["Monday", 
                    "Tuesday", 
                    "Wednesday", 
                    "Thursday", 
                    "Friday", 
                    "Saturday", 
                    "Sunday"]

    @banners = Banner.all
  end

end
