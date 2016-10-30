class GuessesController < ApplicationController
  def index

    # g.new
    # g.first_number = params["first"]
    # g.second_number = params["second"]
    # watch videooooo
    @first_guess = params["first"]
    @second_guess = params["second"]
    @third_guess = params["third"]


    if @first_guess == nil || @second_guess == nil || @third_guess == nil || @first_guess == "" || @second_guess == "" || @third_guess == ""

      @full_guess = ""

    else

      if @first_guess.to_i < @second_guess.to_i && @second_guess.to_i < @third_guess.to_i

        @full_guess = @first_guess + "," + @second_guess + "," + @third_guess + " Yes."

      else

        @full_guess = @first_guess + "," + @second_guess + "," + @third_guess + " No."
      end
    end


    render("guesses/index.html.erb")
  end

  def answer

    @user_answer = params["q"]

    render("guesses/answer.html.erb")
  end
end
