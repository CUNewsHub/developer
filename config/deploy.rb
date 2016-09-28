# config valid only for current version of Capistrano
lock '3.6.1'

set :log_level, :info

# setting application name
set :application, 'newshub_staging'

# user used when deploying
set :deploy_user, 'newshub'

# default VCS
set :scm, :git

# number of releases to keep
set :keep_releases, 5

# setting the temporary directory
set :tmp_dir, "/home/newshub/tmp"

set :branch, "master"
if ENV['branch']
        set :branch, ENV['branch']
end
