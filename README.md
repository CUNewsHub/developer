### NewsHub developer

#### Creating a local instance

##### Dependencies

Dependencies are found in *dependencies.txt*.

To install all dependencies run `pip install -r dependencies.txt`

#### Development

##### Capistrano

Capistrano is a automated deployment tool, which we will be using to deploy the project to the webfaction server. It's written in ruby, but its fully compatible to deploy any project, written in any language.
More info [here](http://capistranorb.com/).

###### Installing Capistrano

You can install capistrano using the command `gem install capistrano`. You might need to use `sudo gem install capistrano` as the installation directory might have root privileges. 

In case you have ruby 1.9 or lower (which is the usual case), you first need to install net-ssh 2.9 using the command `gem install net-ssh -v 2.9`. Again, you might need to use `sudo`.
