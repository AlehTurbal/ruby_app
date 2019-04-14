require_relative '../lib/log_calculator'

RSpec.describe LogCalculator do

  let(:file_path) { File.dirname(__FILE__) + '/fixtures/log_file.txt' }

  let(:page_visits) do
    [
      '/contact 2 visits',
      '/help_page/1 1 visits',
      '/home 1 visits'
    ]
  end

  let(:page_views) do
    [
      '/contact 2 unique views',
      '/help_page/1 1 unique views',
      '/home 1 unique views'
    ]
  end

  subject { described_class.new(file_path) }

  it 'load file' do
    expect(subject.log_lines.size).to eq 4
  end

  it '#page_visits' do
    expect(subject.page_visits).to eq(page_visits)
  end

  it '#page_views' do
    expect(subject.page_views).to eq(page_views)
  end
end
