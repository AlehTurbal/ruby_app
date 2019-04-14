class LogLine
  attr_reader :path, :ip

  def initialize(line)
    @path, @ip = line.split(' ')
  end
end
