require 'socket'

module Minecraft
    module RToolkit
        Dir[File.join(File.dirname(__FILE__),  '**', '*.rb')].each { |f| require f }

        def self.new(options={})
            Minecraft::RToolkit::API.new(options)
        end
    end
end
