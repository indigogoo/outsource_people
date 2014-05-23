module SpeakersHelper
  
 
  
Days_of_week = {1 => "Понедельник", 
                    2 => "Вторник", 
                    3 => "Среда", 
                    4 => "Четверг", 
                    5 => "Пятница", 
                    6 => "Суббота", 
                    7 => "Воскресенье"}

Days_of_week_en = {1 => "Monday", 
                    2 => "Tuesday", 
                    3 => "Wednesday", 
                    4 => "Thursday", 
                    5 => "Friday", 
                    6 => "Saturday", 
                    7 => "Sunday"}

  def to_hash speakers
  my_hash = []
    speakers.each do |s|
      my_hash[s.speech_day.cwday] ||= {}
      my_hash[s.speech_day.cwday][s.speech_time] = s
    end
    my_hash
  end
 end
