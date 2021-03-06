Rails.application.routes.draw do
  # root 'welcome#index'
    resources :restaurants do
      resources :reservations
    end
    resources :patrons

    post 'restaurants/:restaurant_id/reservations/add_time', :to => 'reservations#add_time'

    post 'restaurants/:restaurant_id/reservations/subtract_time', :to => 'reservations#subtract_time'

    post 'restaurants/login' => 'restaurants#signin'

    post 'patrons/login' => 'patrons#signin'

    post 'restaurants/:restaurant_id/reservations/countdown/:id', :to => 'reservations#countdown'

    post 'restaurants/:restaurant_id/reservations/:id/send_alert', :to => 'reservations#send_alert'

    get 'restaurants/:restaurant_id/reservations/:id/send_alert', :to => 'reservations#send_alert'
end
