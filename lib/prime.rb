require 'optparse'
require './lib/prime_generator'
require './lib/table_printer'

module Prime
  class Start
    def initialize
      @options = {}

      opt_parser = OptionParser.new do |opt|
        opt.banner = "Usage: prime COMMAND [OPTIONS]"
        opt.separator  ""
        opt.separator  "Commands"
        opt.separator  "     generate: generate"
        opt.separator  ""
        opt.separator  "Options"

        opt.on("-count","--count COUNT", Integer, "How many prime numbers you want to generate") do |number|
          @options[:number] = number.to_i
        end

        opt.on("-h","--help","help") do
          puts opt_parser
        end
      end

      begin
        opt_parser.parse!
        mandatory = [:number]
        missing = mandatory.select{ |param| @options[param].nil? }
        unless missing.empty?
          puts "Missing options: #{missing.join(', ')}"
          puts opt_parser
          exit
        end
      rescue OptionParser::InvalidOption, OptionParser::MissingArgument
        puts $!.to_s
        puts opt_parser
        exit
      end

      if @options.empty?
        puts opt_parser
      end
    end

    def run
      unless @options[:number].nil?
        prime_numbers = Prime::PrimeGenerator.new.gen(@options.fetch(:number, 11))
        puts Prime::TablePrinter.new(prime_numbers).print
      end
    end
  end
end
