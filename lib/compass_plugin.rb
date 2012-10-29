module CompassInitializer
  def self.registered(app)   
    require 'sass/plugin/rack'   

    Compass.configuration do |config|
      config.project_path               = Padrino.root
      config.sass_dir                   = 'app/assets/css'
      config.project_type               = :stand_alone
      config.http_path                  = '/'
      config.css_dir                    = 'public/css'
      config.images_dir                 = 'public/images'  
      config.http_images_path           = '/' + 'images'
      config.javascripts_dir            = 'public/js'
      config.output_style               = :expanded   
      config.http_generated_images_path = '/' + 'images'     

      if Padrino.env == :production
        config.output_style = :compressed     
      end
    end  

    Compass.configure_sass_plugin!
    Compass.handle_configuration_change!

    app.use Sass::Plugin::Rack
  end
end
