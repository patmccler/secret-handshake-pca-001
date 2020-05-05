class SecretHandshake
  attr_reader :commands

  def initialize input
    @commands = process input
  end

  def process(input)
    chars = input.split("").reverse
    return [] unless chars.all? { |c| %(1 0).include? c }

    chars.each_with_object([]).with_index do |(char, arr), i|
      next unless char == "1"

      case i
      when 0
        arr << "wink"
      when 1
        arr << "double blink"
      when 2
        arr << "close your eyes"
      when 3
        arr << "jump"
      when 4
        arr.reverse!
      end
      # case
    end
    # each with index
  end
end
