get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/' do 

  redirect "/new_note"
  # case
  #   when :main_choice == "Create"
  #     erb :new_note
  #   when :main_choice == "Read"
  #     erb :listing
  #   when :main_choice == "Update"
  #     erb :update_note
  #   when :main_choice == "Destroy"
  #     erb :delete_note
  # end
end

get '/new_note' do

end
