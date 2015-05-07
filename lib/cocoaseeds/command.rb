require 'colorize'

module Seed
  class Command
    def self.run(argv)
      case argv[0]
      when 'install'
        Seed::Core.install
      when '--version'
        puts Seed::VERSION
      else
        self.help
      end
    end

    def self.help
      puts 'Usage: seed install'
    end
  end
end