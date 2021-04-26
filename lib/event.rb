class Event
  attr_accessor :start_date, :duration, :title, :attendees
  
  def initialize(new_start_date, duration, title, attendees)
    @title = title.to_s
    @start_date = Time.parse(new_start_date)
    @duration = (duration).to_i
    @attendees = attendees.to_a 
  end

  def postpone_24h
    @start_date = @start_date + 24*60*60
  end  

  def end_date
    @start_date + @duration*60
  end

  def is_past?
    @start_date> Time.now ? (puts "Oui c'est terminé ou en cours maggle") : (puts "Non ça arrive bientôt le #{@start_date}")
  end

  def is_future?
    @start_date< Time.now
  end

  def is_soon?
    @start_date - 30*60 < Time.now && @start_date>Time.now
  end

  def to_s
    puts "______________________________________________________"
    puts "______________________________________________________"
    puts "> Titre :     #{@title}"
    puts "> Date :      #{@start_date}"
    puts "> Durée :     #{@duration}"
    puts "> Invité(s) : #{@attendees.join(', ')}"
    puts "______________________________________________________"
    puts "______________________________________________________"
  end

end