Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #get a list of all students
  get '/students', to: 'students#index'

  #display students list, order by grade
  get '/students/grades', to: 'students#grades'

  #show highest grade
  get '/students/highest-grade', to: 'students#highest_grade'
end
