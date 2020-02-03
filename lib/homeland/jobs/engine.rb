module Homeland
  module Jobs
    class Engine < ::Rails::Engine
      isolate_namespace Homeland::Jobs

      initializer 'homeland.plugin.jobs' do |app|
        app.routes.prepend do
          mount Homeland::Jobs::Engine, at: '/'
        end
      end
    end
  end
end