set :application, "spizdili.com.ua"
set :user, "dcadminivandep"
set :scm, :git
set :repository,  "git@github.com:igarbera/testdep.git"
set :branch, "stable"
set :repository_cache, "git_cache"
set :deploy_via, :remote_cache
set :ssh_options, { :forward_agent => true }


role :web, application                          # Your HTTP server, Apache/etc
role :app, application                          # This may be the same as your `Web` server
role :db,  application, :primary => true # This is where Rails migrations will run

set :deploy_to, "/var/www/clients/client2/web8/web"
