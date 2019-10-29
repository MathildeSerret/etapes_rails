Etapes :
rails new -d postgresql nom_de_ton_app
cd nom_de_ton_app
bundle install
rails db:create

pour lancer le serveur : rails s ou rails server

créer models : 

rails g model User first_name:string 
last_name:string description:text email:string 
age:integer

rails g model City name:string zip_code:string

rails g model Gossip title:string 
content:string 

rails g model Tag title:string

rails g model JoinTableTagGossip 

rails g model JoinTablePrivateMessageUser

rails g model PrivateMessage content:string

remplir les models

puis faire rails db:migrate

faire un controller 
rails generate controller pirate 

créer pages
get '/pirate/home', to: 'pirate#home'
get '/pirate/team', to: 'pirate#team'

mettre migration en "down"
rake db:rollback

remplir seed

puis refaire rails db:migrate

vérifier statut des migrations
rails db:migrate:status

pour faire démarrer le site
rails db:seed

puis rails c 