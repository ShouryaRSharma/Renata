# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks
Rake::Task['yarn:install'].clear
namespace :yarn do
  desc "Disabling internal yarn install from Rails"
  task :install => [:environment] do
    puts "Disabling internal yarn install from Rails"
  end
end

Rake::Task['webpacker:yarn_install'].clear
namespace :webpacker do
  desc "Disabling internal yarn install from Rails"
  task :yarn_install => [:environment] do
    puts "Disabling internal yarn install from Rails"
  end
end
