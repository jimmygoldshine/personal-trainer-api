Rails.application.routes.draw do

  resources :workouts do
    resources :exercises do
      resources :set_ofs
    end
  end

end
