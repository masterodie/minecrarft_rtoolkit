# MinecraftRtoolkit

A Simple API Wrapper for [Remote Toolkit](https://forums.bukkit.org/threads/admn-remotetoolkit-r10-a15-restarts-crash-detection-auto-saves-remote-console-1-7-2.674)

## Installation

Add this line to your application's Gemfile:

    gem 'minecraft_rtoolkit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minecraft_rtoolkit

## Usage

```ruby
require 'minecraft_rtoolkit'

api = Minecraft::RToolkit.new(host: '127.0.0.1', port: 25561, user: 'admin', password: 'password')

#Hold server
api.stop

#Unhold server
api.start

#Restart server
api.restart

#Force restart server
api.force_restart

#Force stop server
api.force_stop

#Disable scheduled restarts
api.disable_restarts

#Enable scheduled restarts
api.enable_restarts

#Reschedule restart
api.reschedule_restart('1h 30m')

#Get RToolkit version
api.version
```

For more information visit the [RToolkit Wiki](http://drdanick.com/wiki/index.php?title=Legacy_Release_10_documentation#In-game_commands) and [Forum Post](https://forums.bukkit.org/threads/admn-remotetoolkit-r10-a15-restarts-crash-detection-auto-saves-remote-console-1-7-2.674)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/minecraft_rtoolkit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
