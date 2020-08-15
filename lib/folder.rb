class Folder

	def ruby
		Dir.mkdir("lib")
		Dir.mkdir("db")

		File.write("app.rb", "require 'pry'\nrequire 'bundler'\n$:.unshift File.expand_path(\"./../lib\", __FILE__)\nrequire 'controller'", mode: "w")
		File.write("Gemfile", "source 'https://rubygems.org'\nruby '2.5.1'\ngem 'pry'\ngem 'bundler'", mode: "w")
		File.write("README.md","Ruby program in alpha stage.", mode: "w")
		File.write("lib/controller.rb","class Controller\n\nend", mode: "w")

	    system("bundle install")
	    system("git init")
	end

	def rails_postgresql
		system("git init")
		File.write(".gitignore","\n.env", mode: "a+")
		File.write(".env","", mode: "w")
		File.write("Gemfile", "#you need to put this gem in devellopement for it to work by default\ngem 'sendgrid-ruby'\ngem 'devise'\ngem 'stripe'\ngem 'letter_opener'\ngem 'dotenv-rails'\ngem 'activerecord'\ngem 'table_print'\ngem 'faker'\ngem 'bcrypt'", mode: "a+")
		system("bundle install")
		system("rails db:create")
	end

end




