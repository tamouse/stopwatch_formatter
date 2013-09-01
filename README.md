# StopwatchFormatter

Add test duration for each test in the Documentation format.

(Based on https://github.com/mariuszlusiak/RSpec-custom-formatter)

## Installation

Add this line to your application's Gemfile:

        gem 'stopwatch_formatter'

And then execute:

        $ bundle

Or install it yourself as:

        $ gem install stopwatch_formatter

## Usage

Add the following to your `spec/spec_helper.rb` file:

        require 'stopwatch_formatter'

Add or change the following in your `.rspec` file:

        --format StopwatchFormatter

Alternatively, you can add the following to the `spec/spec_helper.rb`
file:

        RSpec.configure {|c| c.add_formatter StopwatchFormatter }

but if you also specify a formatter via the command line or .rspec,
you'll get both sets of output (fun!).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
