class FizzBuzz

  attr_reader :arr_final

  def initialize(arr_num, divider)
    @arr_num = arr_num
    @divider = divider
    @arr_final = []
  end

  def divider_num?(num, div)
    num % div == 0 ? true : false
  end

  def include_divider?(num, divider)
    num.digits.include?(divider)
  end

  def reply(a, b)
    # puts "a:#{a} y b #{b}"
    if (a && b)
      @arr_final << 'FizzBuzz'
    elsif (a)
      @arr_final << 'Fizz'
    elsif (b)
      @arr_final << 'Buzz'
    end
  end

  def check_conditions(num)
    a = (divider_num?(num, @divider[0]) || include_divider?(num, @divider[0]))
    b = (divider_num?(num, @divider[1]) || include_divider?(num, @divider[1]))
    reply(a, b)
  end

  def check_num
    @arr_num.each { |num|
      # puts "el div es: #{@divider}, y el num es #{num}"
      check_conditions(num)
    }
  end
end

arr_num = [15,2,3,4,5,6,7,8,9,10,30]
divider = [3,5]

num_FizzBuzz = FizzBuzz.new(arr_num, divider)
num_FizzBuzz.check_num
print num_FizzBuzz.arr_final
