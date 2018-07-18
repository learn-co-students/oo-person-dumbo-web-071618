class Person
    attr_reader :num

    def initialize(num)
        @num = num
    end

    def num=(num)
        @num += num
        if @num > 10
            @num = 10
        elsif @num < 0
            @num = 0
        end
    end
end

var = Person.new(3)


other_var = var.num += 15

puts "#{other_var}"

puts "#{var.num}"