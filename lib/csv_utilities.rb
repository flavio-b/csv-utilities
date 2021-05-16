# frozen_string_literal: true

require_relative "csv_utilities/version"

module CSVUtilities
  class Error < StandardError; end

  IGNORE_CHARACTERS = /[^A-Za-z0-9_ ]/
  SPACES = /[\s]/

  private

  def header_converter(ignore: IGNORE_CHARACTERS )
    lambda { |header| header.to_s.downcase.gsub(ignore, '').squish.gsub(SPACES, '_') }
  end
end
