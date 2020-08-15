This is a tame saver programme to automate tasks.

It need the gem watir to be installed on your device.

Run app.rb to see a menu asking for your entry.

All entry can be wrote in a bash line if you wanna skip the menu.
ex:$ ruby app.rb repo my_new_reposiroty_name
This one will create a repo by itself with the given name and add the remote to the local git.

Set up repository creation with watir:
You need to create at the root a file named "user_info" with your ID with the following format: "username password"
Remember to add "user_info" to ".gitignore" if you plane to push any day.

