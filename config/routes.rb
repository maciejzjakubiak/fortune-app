Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "fortunes"
  get "/lotto", controller: "my_examples", action: "lotto"
end
