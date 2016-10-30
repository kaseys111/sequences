Rails.application.routes.draw do

  root "guesses#index"

  get("/all_guesses", { :controller => "guesses", :action => "index"})

  get("/show_answer", { :controller => "guesses", :action => "answer"})

  get("/all_guesses_reset", { :controller => "guesses", :action => "index_reset"})

end
