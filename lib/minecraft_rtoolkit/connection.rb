module Minecraft
    module RToolkit
        class Connection
            def initialize(options={})
                @user = options[:user]
                @password = options[:password]
                @host = options[:host]
                @port = options[:port]
                @connection = nil
            end

            def make_request(action)
                "#{action.upcase}:#{@user}:#{@password}"
            end

            def open
                if @connection.nil?
                    @connection = UDPSocket.new()
                    begin
                        @connection.connect(@host, @port)
                        @connection.send('Hello', 0)
                    rescue
                        raise "Connection Error"
                    end
                end
            end

            def send(action)
                open if @connection.nil?
                unless @connection.nil?
                    str = "#{action.upcase}:#{@user}:#{@password}"
                    @connection.send(str, 0)
                    close
                end
            end

            def close
                unless @connection.nil?
                    @connection.close
                end
            end
        end
    end
end
