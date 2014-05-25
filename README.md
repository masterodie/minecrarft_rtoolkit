# MinecraftRtoolkit

A Simple Wrapper for [Remote Toolkit](https://forums.bukkit.org/threads/admn-remotetoolkit-r10-a15-restarts-crash-detection-auto-saves-remote-console-1-7-2.674)

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

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/minecraft_rtoolkit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
