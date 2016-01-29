 #setting default branch
set :branch, "master"

# setting how the server should be accessed
role :web, %w{newshub@newshub.webfactional.com}

# setting repository url for front end
set :repo_url, 'git@github.com:CUNewsHub/front-end.git'

# setting shared directories
set :linked_dirs, %w{media}

# setting deployment directory
set :deploy_to, "/home/newshub/webapps/newshub_static"
