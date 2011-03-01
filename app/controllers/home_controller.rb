require "heater"

class HomeController < ApplicationController
  def index
    puts "Heating stuff up"
    h =  Heater.new
    # h.do_this_now
    h.do_this_later

    # first_user = User.first
    #     @user_url = user_url(first_user)
    
    #Delayed::Job.enqueue( h, {:run_at => 2.minutes.from_now} )
    #Delayed::Job.enqueue( h )
    #Delayed::Job.enqueue Heater.new
  end

end
