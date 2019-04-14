require_relative 'log_line'

class LogCalculator
  attr_reader :log_lines

  def initialize(file)
    @log_lines = File.foreach(file).map { |line| LogLine.new(line) }
  end

  def page_visits
    log_lines.
      group_by(&:path).
      each_with_object({}) { |item, result| result[item.first] = item.last.size }.
      sort_by {|_, v| -v }.map { |item| "#{item[0]} #{item[1]} visits" }
  end

  def page_views
  end
end
