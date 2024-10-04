# lib/date_formatter_helper.rb

require 'date'

module DateFormatterHelper
  # Define supported formats
  FORMATS = {
    default: '%Y-%m-%d',        # 2024-10-04
    short: '%m-%d-%Y',          # 10-04-2024
    long: '%B %d, %Y',          # October 04, 2024
    time: '%Y-%m-%d %H:%M:%S'   # 2024-10-04 10:30:00
  }

  # Method to format dates based on specified format
  def self.format(date, format = :default)
    date.strftime(FORMATS[format])
  rescue
    "Invalid date format"
  end
end
