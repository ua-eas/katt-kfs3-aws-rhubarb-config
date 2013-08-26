set :application, 'Rhubarb Config'
set :repo_url, 'git@github.com:ua-eas/katt-kfs-rhubarb-config.git'

set :deploy_to, '/etc/opt/kuali/rhubarb/rhubarb-1.0'
set :scm, :git

set :format, :pretty
set :log_level, :debug
set :pty, true
