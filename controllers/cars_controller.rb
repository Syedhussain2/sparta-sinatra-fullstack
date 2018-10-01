class CarsController < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  # setting the root as the parent directory of the current directory
  set :root, File.join(File.dirname(__FILE__), '..')

  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") }

  # INDEX
  get '/cars' do
    @title = "Index Page"
    @cars = Car.all_with_people

    erb :'cars/index'
  end
  # NEW
  get '/cars/new' do
    erb :'cars/new'
  end
  # SHOW
  get '/cars/:id' do
    id = params[:id].to_i
    @car = Car.find id

    erb :'cars/show'
  end
  # CREATE
  post '/cars' do

    car = Car.new

    car.modal_name = params[:modal_name]
    car.color = params[:color]
    car.year = params[:year]


    car.save

    redirect '/cars'

  end
  # UPDATE
  put '/cars/:id' do
    id = params[:id].to_i

    car = Car.find id

    car.modal_name = params[:modal_name]
    car.color = params[:color]
    car.year = params[:year]

    car.save

    redirect '/cars'

  end
  # DELETE
  delete '/directors/:id' do
    id = params[:id].to_i
    Car.destroy id
    redirect '/cars'
  end
  # EDIT
  get '/cars/:id/edit' do
    id = params[:id].to_i
    @car = Car.find id

    erb :'cars/edit'
  end

end
