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

            def enbale_restarts
                @conn.send 'enbale'
            end

            def disable_restarts
                @conn.send 'disable'
            end

            def force_stop
                @conn.send 'forcestop'
            end

            def force_restart
                @conn.send 'forcerestart'
            end

            def version
                @conn.send 'version'
            end

            def reschedule_restart(time)
                @conn.send "reschedule:#{time}"
            end
        end
    end
end
