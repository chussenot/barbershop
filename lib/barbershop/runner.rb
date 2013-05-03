# encoding: utf-8

require 'boson/runner'

module BarberShop
  class Runner < Boson::Runner

    desc 'generate a sample configuration file'
    def init
      config = <<YAML
:gaston:
  :trello:
    :oauth_token: [token]
  :github:
    :endpoint: https://github.company.com/api/v3
    :oauth_token: [token]
    :adapter: net_http
    :ssl: false
YAML
    File.open(config_path, 'w+' ) do |f|
      f.write(config)
    end
    end

    desc 'create a new project'
    def create
       if File.exists?(config_path)

       else
        puts 'please add a configuration file'
       end
    end

    desc 'list all projects'
    def list
       if File.exists?(config_path)

       else
        puts 'please add a configuration file'
       end
    end

    desc 'list all open issues in a github project'

    def issues

    end

    def collect
      tracker = BarberShop::Tracker.new
      tracker.track
    end

    private
    def config_path
      'config/gaston/barber.yml'
    end
  end
end
