class Heater 
  attr_accessor :current_temperature
  
  def initialize(initial_temperature = 0)
    @current_temperature = initial_temperature
  end
  
  def perform
    puts "I am a heater, but i don't complain"
    File.open("/Users/marvin/tmp/showme", 'w')
  end
  
  def holla_path
    puts #{RAILS_ROOT}
  end
  
  # def do_this_now
  #     puts "I'm doin' it!"
  #   end
  #   
  def do_this_later
    puts "I did something"
    File.open("/Users/marvin/tmp/show_me_please", 'w')
    User.create( :name => "Delayed_MOFO" )
  end
  handle_asynchronously :do_this_later, :run_at => Proc.new { 1.minute.from_now }
   
end