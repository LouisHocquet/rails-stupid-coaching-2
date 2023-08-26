Rails.application.routes.draw do
  get "ask", to: "question_controller#ask"
end
