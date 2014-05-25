module Minecraft
    module RToolkit
        class Connection
            def initialize(options={})
                @user = options[:user]
                @password = options[:password]
                @host = options[:host]
                @port = options[:port]
                @connection = nil

                #define destructor
                ObjectSpace.define_finalizer(self, method(:close))
            end

            def make_request(action)
                "#{action.upcase}:#{@user}:#{@password}"
            end

            def open
                if @connection.nil?
                    @connection = UDPSocket.new()
                    @connection.connect(@host, @port)
                end
            end

            def send(action)
                open if @connection.nil?
                unless @connection.nil?
                    begin
                        @connection.send(make_request(action), 0)
                        recieve
                    rescue
                        raise "Connection Error"
                    end
                end
            end

            def recieve
                unless @connection.nil?
                    begin
                        response = @connection.recvfrom(32)
                        case response[0]
                        when 'response:success' then true
                        when /^response:.*/ then false
                        else
                            response [0]
                        end
                    rescue
                        raise "Connection Error"
                    end
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
