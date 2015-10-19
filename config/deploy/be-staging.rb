# setting default branch
set :branch, "master"

# setting how the server should be accessed
role :web, %w{newshub@newshub.webfactional.com}

# setting linked files, which will be accessible across releases
set :linked_files, %w{src/secret_data.py}

# setting repository url for front end
set :repo_url, 'git@github.com:CUNewsHub/back-end.git'

# setting deployment directory
set :deploy_to, "/home/newshub/webapps/newshub"

namespace :deploy do

	task :after_deploy do
		on roles(:web) do
			execute "python2.7 /home/newshub/webapps/newshub/current/manage.py migrate"
			execute "/home/newshub/webapps/newshub/apache2/bin/restart"
		end
	end

	after :finished, :after_deploy
end
