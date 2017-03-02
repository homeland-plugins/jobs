module Homeland
  module Jobs
    class Engine < ::Rails::Engine
      isolate_namespace Homeland::Jobs

      initializer 'homeland.jobs.init' do |app|
        if Setting.has_module?(:jobs)
          Homeland.register_plugin do |plugin|
            plugin.name           = 'jobs'
            plugin.display_name   = '招聘'
            plugin.description    = Homeland::Jobs::DESCRIPTION
            plugin.version        = Homeland::Jobs::VERSION
            plugin.navbar_link    = true
            plugin.root_path      = "/jobs"
          end

          User.send :include, Homeland::Press::UserMixin

          app.routes.prepend do
            mount Homeland::Jobs::Engine => '/'
          end
        end
      end
    end
  end
end
