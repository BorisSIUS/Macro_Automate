class Repository

	def initialize(name)
		@name = name
		@browser = Watir::Browser.new(:firefox)
		@user_info = File.read("/home/alfoldi/Documents/THP/macro_ruby/macro_POO/user_info", mode: "r").split
	end

	def login

		@browser.goto "github.com/new"

		user_field = @browser.text_field(xpath: "//*[@id='login_field']")
		password_field = @browser.text_field(xpath: "//*[@id='password']")
		button = @browser.button(xpath: "/html/body/div[3]/main/div/form/div[4]/input[9]")

		user_field.set(@user_info[0])
		password_field.set(@user_info[1])
		button.click
	end

	def create

		name_field = @browser.text_field(xpath: "//*[@id='repository_name']")
		button = @browser.button(xpath:"/html/body/div[4]/main/div/form/div[4]/button")

		name_field.set(@name)
		button.click

		@browser.close
	end

	def remote
		remote_adress = "git@github.com:#{@user_info[0]}/#{@name}.git"
		system("git remote add origin #{remote_adress}")
	end
end 
