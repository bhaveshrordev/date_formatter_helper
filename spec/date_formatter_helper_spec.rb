# spec/date_formatter_helper_spec.rb

require 'spec_helper'
require 'date_formatter_helper'

RSpec.describe DateFormatterHelper do
  let(:date) { Date.new(2024, 10, 4) }

  describe '.format' do
    it 'formats the date in default format' do
      expect(DateFormatterHelper.format(date)).to eq('2024-10-04')
    end

    it 'formats the date in short format' do
      expect(DateFormatterHelper.format(date, :short)).to eq('10-04-2024')
    end

    it 'formats the date in long format' do
      expect(DateFormatterHelper.format(date, :long)).to eq('October 04, 2024')
    end

    it 'formats the date with time' do
      date_with_time = DateTime.new(2024, 10, 4, 10, 30, 0)
      expect(DateFormatterHelper.format(date_with_time, :time)).to eq('2024-10-04 10:30:00')
    end

    it 'returns error message for invalid format' do
      expect(DateFormatterHelper.format('invalid')).to eq('Invalid date format')
    end
  end
end
