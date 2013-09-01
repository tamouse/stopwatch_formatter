# RspecStopwatchFormatter

Add test duration for each test in the Documentation format.

(Based on https://github.com/mariuszlusiak/RSpec-custom-formatter)

## Installation

Add this line to your application's Gemfile:

    gem 'rspec_stopwatch_formatter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec_stopwatch_formatter

## Usage

Add the following to your `spec/spec_helper.rb` file:

        require 'rspec_stopwatch_formatter'
        RSpec.configuration.add_formatter StopwatchFormatter

# General information on RSpec custom formatters

The standard documentation formatter for RSpec does not show how long
each test executes. This information is available in the HTML
formatter, though, so I thought it could be available in others. Turns
out this is true.

Inside the formatter, the `example` variable has a method called
`execution_result` that is a Hash. One of the hash keys is
`:run_time`, which is the milliseconds the test took to run, just what
we wanted.


## Creating the custom formatter

The simplest thing in our case is to subclass the Document formatter,
and replace the reporting functions. `stopwatch_formatter.rb` does
this.

## Using the custom formatter

You just need to require the file containing your custom formatter,
and call it by the class name, `StopwatchFormatter` in this case.

        rspec -r /path/to/stopwatch_formatter.rb --format StopwatchFormatter ...

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
