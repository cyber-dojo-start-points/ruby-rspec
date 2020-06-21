require 'simplecov'
require 'simplecov-console'
require 'stringio'

module SimpleCov
  module Formatter
    class FileWriter
      def format(result)
        stdout = capture_stdout {
          SimpleCov::Formatter::Console.new.format(result)
        }
        `mkdir #{report_dir} 2> /dev/null`
        IO.write("#{report_dir}/coverage.txt", stdout)
      end
      def report_dir
        "#{ENV['CYBER_DOJO_SANDBOX']}/report"
      end
      def capture_stdout
        begin
          uncaptured_stdout = $stdout
          captured_stdout = StringIO.new('', 'w')
          $stdout = captured_stdout
          yield
          $stdout.string
        ensure
          $stdout = uncaptured_stdout
        end
      end
    end
  end
end

SimpleCov.command_name("RSpec")
SimpleCov.at_exit do
  # Only create coverage report on green traffic-light
  if SimpleCov.exit_status_from_exception === 0
    SimpleCov::Formatter::FileWriter.new.format(SimpleCov.result)
  end
end
SimpleCov.start
