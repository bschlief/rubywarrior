class Player
  attr_accessor :need_heal
  attr_accessor :health


  def play_turn(warrior)
    @health ||= warrior.health

    if warrior.health == 20
      @need_heal = false
    end

    if warrior.health < 12 
      @need_heal = true
    end

    if @health > warrior.health
      print "RUSH! ", @health, " > ", warrior.health, "\n"
      @need_heal = false
    end

    @health = warrior.health

    if warrior.feel.captive?
      return warrior.rescue!
    end

    if @need_heal && !warrior.feel.empty?
      return warrior.walk!(:backward)
    end

    if @need_heal && warrior.health < 20
      return warrior.rest!
    end

    if !warrior.feel.empty?
      return warrior.attack!
    end

    return warrior.walk!
  end




end

