class Menu #Class d'action

	def main

		while true

			puts "Choose one option:"
			puts "'folder'- initialize a ruby folder"
			puts "'push'- push a commit"
			puts "'repo'- create a repository from current folder"
			puts "press <ENTER> to exite the program"

			if ARGV[0] == nil
				user_choice = gets.chomp 
			else
				user_choice = ARGV[0]
			end

			case user_choice
			when "folder" 
				puts "initialize ruby folder start"
				folder
				puts "ruby folder initialized"
			when "push"
				puts "commit push start"
				commit
				puts "commit pushed"
			when "repo"
				puts "create repository start"
				repository
				puts "repository created"
			else
				break
			end
		end
	end

	def folder
		if ARGV[1] == nil
			puts "Choose folder type:"
			puts "'ruby'- default ruby folder"
			puts "'rails'- ruby folder with progreSQL for the data base"
			ARGV.clear
			project_type = gets.chomp 
		else
			project_type = ARGV[1]
			ARGV.clear
		end

		current_folder = Folder.new

		case project_type
		when 'ruby'
			current_folder.ruby
		when 'rails'
			current_folder.rails_postgresql
		else
			puts 'wrong input'
		end
	end

	def commit
		if ARGV[1] == nil
			puts "choose remote:"
			system("git remote -v")
			push_target = gets.chomp 
		else
			push_target = ARGV[1]
		end		
		if ARGV[2] == nil
			puts "Choose commit name:"
			commit_name = gets.chomp 
		else
			commit_name = ARGV[2]
		end
		ARGV.clear
		# fire class method
		current_commit = Commit.new(commit_name,push_target)
		current_commit.push
	end

	def repository
		if ARGV[1] == nil
			puts "Choose repository name:"
			repository_name = gets.chomp 
		else
			repository_name = ARGV[1]
		end
		ARGV.clear
		# fire class method
		current_repostory = Repository.new(repository_name)
		current_repostory.login
		current_repostory.create
		current_repostory.remote
	end
end