require_relative '../lib/log_line'

RSpec.describe LogLine do
  let(:line) { '/help_page/1 126.318.035.038' }

  subject { described_class.new(line) }

  it 'return path' do
    expect(subject.path).to eq '/help_page/1'
  end

  it 'return ip' do
    expect(subject.ip).to eq '126.318.035.038'
  end
end
