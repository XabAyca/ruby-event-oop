class User
  attr_accessor :email, :age
  @@count_user = 0
  @@all_users=[]

  def initialize(email_to_save, age_to_save)
    @email = email_to_save.to_s
    @age = age_to_save.to_i
    @@count_user = @@count_user + 1
    @@all_users << self
  end

  def self.all
    return @@all_users
  end

  def self.count 
    return @@count_user
  end

  def self.find_by_email(email_to_find)
    @@all_users.each do |user|
      if user.instance_variable_get("@email")==email_to_find
        return user
      end
    end
    return puts "Pas d'utilisateur avec cette adresse mail"
  end

end