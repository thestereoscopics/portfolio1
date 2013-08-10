enable :sessions

get '/' do
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

post '/create_note' do
  Note.create(title: params[:new_title], content: params[:new_content].rstrip)
  redirect "/"
end

post '/update_note' do
  p params
  note = Note.find_by_title(params[:main_choice])
  note.update_attributes(title: params[:new_title], content: params[:new_content])
  redirect '/'
end

get '/really' do
  session[:id] = params[:remove]
  erb :you_sure
end

get '/sure' do
  @note = Note.find_by_id(session[:id])
  @note.destroy
  redirect '/'
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
