require 'spec_helper'
require './lib/table_printer'

describe Prime::TablePrinter do
  let(:table) do
    "   | 2\n"\
    "---+--\n"\
    " 2 | 4\n"\
  end

  describe '#print' do
    it "print prime number table" do
      printer = Prime::TablePrinter.new([2]).print
      expect(printer).to eq table
    end
  end
end
