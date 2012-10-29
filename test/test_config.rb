PADRINO_ENV = 'test' unless defined?(PADRINO_ENV)
require File.expand_path('../../config/boot', __FILE__)

class MiniTest::Unit::TestCase
  include Mocha::API
  include Rack::Test::Methods

  def app
    SpinePadrino.tap { |app|  }
  end
end
