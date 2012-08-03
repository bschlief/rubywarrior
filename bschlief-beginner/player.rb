class Player
  attr_accessor :need_heal

  def play_turn(warrior)

    if warrior.health == 20
      @need_heal = false
    end

    if warrior.health < 6
      @need_heal = true
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

    warrior.walk!
  end


end

