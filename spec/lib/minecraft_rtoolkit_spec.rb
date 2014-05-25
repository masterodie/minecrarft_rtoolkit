require_relative '../spec_helper.rb'

describe Minecraft::RToolkit do
    describe 'shortcut' do
        before do
            @api = Minecraft::RToolkit.new(host: '10.10.0.10', port: 25561, user: 'admin', password: 'password')
        end

        it 'should work' do
            @api.must_be_instance_of Minecraft::RToolkit::API
        end
    end
end
