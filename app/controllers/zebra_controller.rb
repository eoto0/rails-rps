class ZebraController < ApplicationController
  
  def rules
    render({ :template => "layouts/homepage"})
  end

  def giraffe
    @comp_move = ["rock", "paper", "scissors"].sample
    
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else 
      @outcome = "won"
    end

    render({ :template => "game_templates/play_rock"})
  end

  def elephant
    @comp_move = ["rock", "paper", "scissors"].sample
  
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "won"
    else 
      @outcome = "lost"
    end

    render({ :template => "game_templates/play_paper"})
  end

  def lion
    @comp_move = ["rock", "paper", "scissors"].sample

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else 
      @outcome = "won"
    end


    render({ :template => "game_templates/play_scissors"})
end
end
