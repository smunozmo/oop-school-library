class Solver
    def factorial(num)
        if num < 0
            return "Math Error"
        else
        (1..num).inject(:*) || 0
        end
    end

    def reverse(word)
        word.reverse
    end

    def fizzbuzz(num)
        if num % 3 == 0 && num % 5 == 0
            'fizzbuzz'
        elsif num % 3 == 0
            'fizz'
        elsif num % 5 == 0
            'buzz'
        else
            num.to_s
        end
    end
end