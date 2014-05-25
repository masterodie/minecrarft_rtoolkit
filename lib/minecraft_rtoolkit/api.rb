module Minecraft
    module RToolkit
        class API
            def initialize(options={})
                raise 'No username given' if options[:user].nil?
                raise 'No password given' if options[:password].nil?
                user = options[:user]
                password = options[:password]
                host = options[:host].nil? ? '127.0.0.1' : options[:host]
                port = options[:port].nil? ? 25561 : options[:port]
                @conn = Minecraft::RToolkit::Connection.new(user: user, password: password, host: host, port: port)
            end

            def start
                @conn.send 'unhold'
            end

            def stop
                @conn.send 'hold'
            end

            def restart
                @conn.send 'restart'
            end

            def enbale
                @conn.send 'enbale'
            end

            def disable
                @conn.send 'disable'
            end

            def forcestop
                @conn.send 'forcestop'
            end

            def forcerestart
                @conn.send 'forcerestart'
            end
        end
    end
end
