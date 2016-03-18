 #setting default branch
require 'slackistrano/capistrano'

set :slack_webhook, "https://hooks.slack.com/services/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"

set :slack_msg_updating,       -> { "#{fetch :slack_deploy_user} has started deploying branch #{fetch :branch} of front-end to the staging-server" }

set :slack_msg_updated,       -> { "#{fetch :slack_deploy_user} has finished deploying branch #{fetch :branch} of front-end to the staging-server" }


# setting how the server should be accessed
role :web, %w{newshub@newshub.webfactional.com}

# setting repository url for front end
set :repo_url, 'git@github.com:CUNewsHub/front-end.git'

# setting shared directories
set :linked_dirs, %w{media}

# setting deployment directory
set :deploy_to, "/home/newshub/webapps/staging_newshub_static"
