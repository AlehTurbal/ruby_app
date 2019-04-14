require_relative '../lib/log_calculator'

RSpec.describe LogCalculator do

  let(:file_path) { File.dirname(__FILE__) + '/fixtures/log_file.txt' }

  subject { described_class.new(file_path) }

  it 'load file' do
    expect(subject.log_lines.size).to eq 4
  end

  it '#page_visits' do
  end

  it '#page_views' do
  end
end
