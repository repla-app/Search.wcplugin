SEARCH_COMMAND = 'grep --exclude-dir=".git" -I --color=always --recursive '\
  '--line-number --extended-regexp'.freeze

module Repla
  module Search
    class Parser
      ANSI_ESCAPE = '\x1b[^m]*m\x1b\[K'.freeze
      MATCH_REGEXP = Regexp.new("#{ANSI_ESCAPE}(.+?)#{ANSI_ESCAPE}")
      METADATA_REGEXP = Regexp.new('(.+?):([0-9]+):')
      TEXT_REGEXP = Regexp.new('.+?:[0-9]+:(.*)')
    end
  end
end
