module Prime
  class TablePrinter
    def initialize(prime_numbers)
      @prime_numbers = prime_numbers
    end

    def print
      @table = heading + x_divider + rows
    end

    private

    def x_col_width
      @prime_numbers.map {|number| number.to_s.length }.max
    end

    def max_num
      value = 0
      @prime_numbers.each do |prime|
        value = prime * prime
      end
      value.to_s.length
    end

    def cell_width(number)
      width = max_num - number.length
      " " * width
    end

    def space_before_row(number)
      width = x_col_width - number.length
      " " * width
    end

    def heading
      line = " " * x_col_width
      line << " |"
      @prime_numbers.each do |prime_number|
        line << " "
        line << cell_width(prime_number.to_s)
        line << prime_number.to_s
      end
      line << "\n"
      return line
    end

    def x_divider
      line = "-" * x_col_width
      line << "-+"
      @prime_numbers.each do |count|
        line << "-" * (max_num + 1)
      end
      line << "\n"
    end

    def row_values(number)
      value = ""
      @prime_numbers.each do |prime|
        num = prime * number
        value << " "
        value << cell_width(num.to_s)
        value << num.to_s
      end
      value
    end

    def rows
      row = ""
      @prime_numbers.each do |number|
        row << space_before_row(number.to_s)
        row << number.to_s
        row << " |"
        row << row_values(number)
        row << "\n"
      end
      row
    end
  end
end
