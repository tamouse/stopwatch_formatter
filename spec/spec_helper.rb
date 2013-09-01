$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'stopwatch_formatter'
RSpec.configuration.add_formatter StopwatchFormatter

