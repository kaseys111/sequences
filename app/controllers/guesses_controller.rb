class GuessesController < ApplicationController
  def index

    g = Guess.new
    g.first_number = params["first"]
    g.second_number = params["second"]
    g.third_number = params["third"]

    if g.first_number != nil && g.second_number != nil && g.third_number != nil
      g.save
    end

    @list = Guess.all

    render("guesses/index.html.erb")
  end


  def answer

    @user_answer = params["q"]

    render("guesses/answer.html.erb")
  end


  def index_reset

    Guess.delete_all

    index
  end
end
