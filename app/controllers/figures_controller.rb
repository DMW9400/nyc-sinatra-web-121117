class FiguresController < ApplicationController

  # INDEX action
  get '/figures' do
    @figures = Figure.all
    erb :"figures/index"
  end


  # NEW action
  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :"figures/new"
  end

  # CREATE action
  post '/figures' do

    @figure = Figure.create(name: params[:name])
    params[:landmark][:name].each do |landmark_id|
      @figure.landmarks << Landmark.find(landmark_id)
    end

    params[:title][:name].each do |title_id|
      @figure.titles << Title.find(title_id)
    end



    redirect "/figures/#{@figure.id}"
  end

  # SHOW action
  get '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    erb :"figures/show"
  end

  # EDIT action
  get '/figures/:id/edit' do
    @figure = Figure.find_by(id: params[:id])
    erb :"figures/edit"
  end

  # UPDATE action
  patch '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    @figure.update(params[:figure])
    redirect "/figures/#{@figure.id}"
  end

  # DELETE action
  delete '/figures/:id' do
    @figure = Figure.find_by(id: params[:id])
    @figure.destroy
    redirect "/figures"
  end

end
