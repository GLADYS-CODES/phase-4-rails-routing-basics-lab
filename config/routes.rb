Rails.application.routes.draw do

  #route for making a GET request to students
 get 'students', to: 'students#index'
 

 #route for students grades
 get '/students/grades', to: 'students#grades'

 #route for students highest grade

 get '/students/highest-grade', to: 'students#highest-grade'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
