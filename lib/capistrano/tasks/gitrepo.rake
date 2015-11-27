Capistrano::Configuration.instance(:must_exist).load do
  namespace :git do
    desc "update cached remote repository url"
    task :update_remote_url do
      run "cd #{shared_path}/cached-copy; git remote set-url origin #{repository}"
    end
  end
end

