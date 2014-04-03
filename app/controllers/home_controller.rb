class HomeController < ApplicationController
  def index
  end
  
  def throw
  	@sign = params[:sign]
  	@auto_generate_throw = auto_throw
  	@game_result = game_result @sign, @auto_generate_throw
  end


  def auto_throw
  	%W(Rock Paper Scissors).sample
  end

  def game_result(sign, auto_generate_throw)
  	
  	if sign.eql? auto_generate_throw
  		return "Tie"
  	elsif winner_combos[sign.to_sym].eql? auto_generate_throw
  		return "Win"
  	else
  		return "Lose"
  	end
  end

  def winner_combos
    return {Rock: "Scissors", Paper: "Rock", Scissors: "Paper"}
  end
end
