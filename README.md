# README - Secure Web App

This README would normally document whatever steps are necessary to get the
application up and running.

Rails Version: Rails 7.0.4.3
Ruby Version: ruby 3.1.2p20

Install and Set-Up rails with the following guide:

https://guides.rubyonrails.org/v5.1/getting_started.html

Open the application in your text editor (VSCode)

In the terminal run "bundle install" in order to make sure all GEMs install correctly
```
bundle install
```

In the terminal run "rails s" in order to start an server instance locally from you machine
```
rails s
```
In your browser search for "localhost:3000" which will open the Web Application in your browser.
```
localhost:3000
```
To change a role of an existing or new user
In the terminal type 
```
rails c
```
Select user that you want to change the role for (first, second, third, fourth, fifth, etc.)
```
@user = User.first
```
Next change role (0 = User; 1 = Moderator; 2 = Admin)
```
@user.role = 2
```
Save the updated role
```
@user.save
```

