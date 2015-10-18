# config valid only for current version of Capistrano
lock '3.4.0'

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
