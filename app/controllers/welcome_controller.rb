class WelcomeController < ApplicationController
  def index
  	@speakers = Speaker.all.order(:speech_day, :speech_time)
  	@days = Speaker.all.order(:speech_day, :speech_time).collect(&:speech_day).uniq
    @banners = Banner.all
  end

  def index_en
    @speakers = Speaker.all.order(:speech_day, :speech_time)
    @days = Speaker.all.order(:speech_day, :speech_time).collect(&:speech_day).uniq
    @banners = Banner.all
  end

  def subscribe
     
     
    email = params[:email]
    name  = params[:name]
    phone = params[:phone]
         
    if email.present?
       
      begin
        @mc.lists.subscribe(@list_id, {'email' => email}, :merge_vars => {:FNAME => name, :FNAME => phone, :LNAME => ''}, :double_optin => false, :update_existing => true, :replace_interests => false, :send_welcome => false)
         
        respond_to do |format| 
          format.json{render :json => {:message => "Проверте почту для подтверждения регистрации."}}
        end
       
        rescue Mailchimp::ListAlreadySubscribedError
           
          respond_to do |format|
            format.json{render :json => {:message => "#{email} is already subscribed to the list"}}
          end
         
        rescue Mailchimp::ListDoesNotExistError
          
          respond_to do |format| 
            format.json{render :json => {:message => "The list could not be found."}}
          end
         
        rescue Mailchimp::Error => ex
             
            if ex.message
        
              respond_to do |format|       
                format.json{render :json => {:message => "There is an error. Please enter valid email id."}}
              end
             
            else
         
              respond_to do |format|       
                format.json{render :json => {:message => "An unknown error occurred."}}
              end              
            end
             
        end
         
        else
           
          respond_to do |format|       
            format.json{render :json => {:message => "Email Address Cannot be blank. Please enter valid email id."}}
          end
         
        end
  end

end
