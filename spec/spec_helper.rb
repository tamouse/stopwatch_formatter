#$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'stopwatch_formatter'
# Adding this formatter here makes it a 'permanent' formatter and
# other formatters specified by --format (on the command line or in
# .rspec will show as well) -- not recommended, really
# RSpec.configure {|c|  c.add_formatter StopwatchFormatter }


