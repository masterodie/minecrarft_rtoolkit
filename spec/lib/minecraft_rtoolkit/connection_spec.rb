require_relative '../../spec_helper.rb'

describe Minecraft::RToolkit::Connection do
    before do
        @user = 'admin'
        @password = 'password'
        @conn = Minecraft::RToolkit::Connection.new(host: '10.10.0.10', port: 25561, user: @user, password: @password)
    end

    describe 'make_request' do
        it 'should return request string' do
            str = 'start'
            @conn.make_request(str).must_equal("#{str.upcase}:#{@user}:#{@password}")
        end
    end
end
