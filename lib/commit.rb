class Commit

	def initialize(name,target)
		@name = name
		@target = target
	end

	def push
		system("git add .")
		system("git commit -m '#{@name}'")
		system("git push #{@target} master")
	end
end
