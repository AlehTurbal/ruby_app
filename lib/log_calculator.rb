require_relative 'log_line'

class LogCalculator
  attr_reader :log_lines

  def initialize(file)
    @log_lines = File.foreach(file).map { |line| LogLine.new(line) }
  end

  def page_visits
    
  end

  def page_views
  end
end
