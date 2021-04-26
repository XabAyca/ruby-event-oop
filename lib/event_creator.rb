class EventCreator 
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize
    @title=get_the_name()
    @start_date=get_the_date()
    @duration=get_the_duration()
    @attendees=get_the_attendees()
    create_event()
  end


  def get_the_name()
    puts "-----   Salut, tu veux créer un événement ? Cool !   -----" 
    puts "Commençons. Quel est le nom de l'événement ?"
    print "> "
    return gets.chomp.to_s
  end

  def get_the_date
    puts "Super. Quand aura-t-il lieu ?"
    print "> "
    return gets.chomp.to_s
  end

  def get_the_duration
    puts "Au top. Combien de temps va-t-il durer (en minutes) ?"
    print "> "
    return gets.chomp.to_i
  end

  def get_the_attendees
    puts "Génial. Qui va participer ? Balance leurs e-mails"
    print "> "
    attendees=gets.chomp.split
    puts "Super, c'est noté, ton évènement a été créé !"
    return attendees
  end

  def create_event()
    new_event=Event.new(@start_date, @duration, @title, @attendees)
    new_event.to_s
  end

end
