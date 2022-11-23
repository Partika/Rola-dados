Rails.application.routes.draw do
  root "/dados", to: "dados#show"
  get "/dados/:num", to: "dados#roll"
end
