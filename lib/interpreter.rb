class Interpreter
  def initialize
    @tape = Array.new(256, 0)
    @index = 0
  end

  def execute(str)
    output = ''

    str.each_char do |char|
      case char
        when '.'
          output += @tape[@index].chr
        when ','
          @tape[@index] = gets.chomp.ord
        when '+'
          @tape[@index] += 1
        when '-'
          @tape[@index] -= 1
        when '>'
          @index += 1
        when '<'
          @index -= 1
      end
    end

    output
  end

end