require 'rails'
require File.expand_path(File.join(File.dirname(__FILE__), '../acts_as_reputable'))

module Acts_As_Reputable
  class Engine < Rails::Engine
    aar_path = File.expand_path(File.join(File.dirname(__FILE__), '../..'))

    paths.lib << File.join(aar_path, 'lib')
    paths.app.controllers << File.join(aar_path, "app/controllers")
    paths.app.helpers << File.join(aar_path, 'app/helpers')
    paths.app.models << File.join(aar_path, "app/models")
    paths.app.views << File.join(aar_path, "app/views")
    paths.config.routes << File.join(aar_path, "rails/routes.rb")
    
    config.autoload_paths << File.join(aar_path, 'lib')
    config.autoload_once_paths << File.join(aar_path, 'lib')

    generators do
      require File.join(aar_path, 'generators/acts_as_reputable/acts_as_reputable_generator')
    end
  end
end