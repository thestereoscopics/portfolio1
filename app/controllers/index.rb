get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do 
  @notes = Note.all 
  case
    when params[:main_choice] == "Create"
      @note 
      redirect "/new_note"
    when params[:main_choice] == "Read"
      @note
      redirect "/listing"
    when params[:main_choice] == "Update"
      @note
      redirect "/update_note"
    when params[:main_choice] == "Destroy"
      @note
      redirect "/delete_note"
  end
end

get '/new_note' do
  erb :new_note
end

get '/listing' do
  @notes = Note.all
  erb :listing
end

get '/update_note' do
  @notes = Note.all
  erb :update_note
end

get '/delete_note' do
  @notes = Note.all
  erb :delete_note
end
