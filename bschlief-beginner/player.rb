class Player
  def play_turn(warrior)
    # add your code here
    if !warrior.feel.empty?
      return warrior.attack! 
    end

    warrior.walk!
  end
end
