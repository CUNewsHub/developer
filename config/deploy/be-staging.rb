# setting default branch
require 'slackistrano/capistrano'

set :slack_webhook, "https://hooks.slack.com/services/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"

set :slack_msg_updating,       -> { "#{fetch :slack_deploy_user} has started deploying branch #{fetch :branch} of back-end to the staging-server" }

set :slack_msg_updated,       -> { "#{fetch :slack_deploy_user} has finished deploying branch #{fetch :branch} of back-end to the staging-server" }


# setting how the server should be accessed
role :web, %w{newshub@newshub.webfactional.com}

# setting linked files, which will be accessible across releases
set :linked_files, %w{src/secret_data.py}

# setting repository url for front end
set :repo_url, 'git@github.com:CUNewsHub/back-end.git'

# setting deployment directory
set :deploy_to, "/home/newshub/webapps/staging_newshub"

namespace :deploy do

	task :after_deploy do
		on roles(:web) do
			execute "workon newshub && pip install -r /home/newshub/webapps/staging_newshub/current/dependencies.txt"
			execute "workon newshub && python /home/newshub/webapps/staging_newshub/current/manage.py migrate"
			execute "workon newshub && python /home/newshub/webapps/staging_newshub/current/manage.py collectstatic --noinput"
			execute "/home/newshub/webapps/staging_newshub/apache2/bin/restart"
		end
	end

	after :finished, :after_deploy
end
