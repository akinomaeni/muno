require 'haml'

class MunoApp
  def call(env)
    request = Rack::Request.new(env)
    if request.get? && request.path == '/'
      Rack::Response.new(render('home/index.html.haml'))
    else
      Rack::Response.new('404 Not Found.', '404')
    end
  end

  def render(template)
    path = File.expand_path("../app/views/#{template}", __FILE__)
    template = File.read(path)
    haml_engine = Haml::Engine.new(template)
    haml_engine.render
  end
end
