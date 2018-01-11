class LandmarksController < ApplicationController


  # INDEX action
  get '/landmarks' do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end


  # NEW action
  get '/landmarks/new' do
    erb :"landmarks/new"
  end

  # CREATE action
  post '/landmarks' do
    @landmark = Landmark.create(name: params[:name], year_completed: params[:year_completed])
    redirect "/landmarks/#{@landmark.id}"
  end

  # SHOW action
  get '/landmarks/:id' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :"landmarks/show"
  end

  # EDIT action
  get '/landmarks/:id/edit' do
    @landmark = Landmark.find_by(id: params[:id])
    erb :"landmarks/edit"
  end

  # UPDATE action
  patch '/landmarks/:id' do
    @landmark = Landmark.find_by(id: params[:id])
    @landmark.update(params[:landmark])
    redirect "/landmarks/#{@landmark.id}"
  end

  # DELETE action
  delete '/landmarks/:id' do
    @landmark = Landmark.find_by(id: params[:id])
    @landmark.destroy
    redirect "/landmarks"
  end

end
