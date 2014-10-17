namespace :seed do

  task :admin_user => [:environment] do
    AdminUser.create(login: 'admin', password: 'verycomplex')
  end

end
