Rails.application.routes.draw do
  devise_for :users
<<<<<<< Updated upstream
  root to: "users#index"
=======
  root to: "items#index"
>>>>>>> Stashed changes
end
