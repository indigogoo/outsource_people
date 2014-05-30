require 'mailchimp'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :setup_mcapi
 
  def setup_mcapi
    @mc = Mailchimp::API.new('c4954d8b35922516dd3e13a858e3359c-us2')
    @list_id = "60d9582464"
  end
end
