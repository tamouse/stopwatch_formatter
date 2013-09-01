require 'rspec/core/formatters/documentation_formatter'

class StopwatchFormatter < RSpec::Core::Formatters::DocumentationFormatter

  DURATION_FORMAT = "%-80s | Duration: %7.5f ms"

  def failure_output(example, exception)
    failure_color(DURATION_FORMAT % ["#{current_indentation}#{example.description.strip} (FAILED - #{next_failure_index})", example.execution_result[:run_time]])
  end

  def passed_output(example)
    success_color(DURATION_FORMAT % ["#{current_indentation}#{example.description.strip}", example.execution_result[:run_time]])
  end

end
