require 'watir'
require_relative 'lib/menu.rb'#add path to enfants file
require_relative 'lib/commit.rb'
require_relative 'lib/folder.rb'
require_relative 'lib/repository.rb'
Menu.new.main
#to do more
	#edit user_info 
	#utiliser le watir.exist?
	#add color via system(echo "...")
	#use mechanize gem with nokogiri