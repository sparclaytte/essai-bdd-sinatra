require 'sinatra'
require 'sinatra/activerecord'
require './environments'

class Contact < ActiveRecord::Base
end

get '/' do
	@donneesbdd = Contact.all #ici je vais chercher TOUTES les donnees de la bdd (la variable = contact peut etre appelee par .first .last ou .all pour tout recuperer)
	erb :home

end	
get '/formulaire' do
	erb :form
	
end

post '/formulaire' do
	@client = Contact.new(params[:formulaire]) #je cree la variable client qui stocke les donnees de mon formulaire(qui est lui meme une variable)le @client peut etre n importe quoi 
	@client.save #ordonne a @client de sauvegarder ses données dans la bdd
	redirect '/'
end



