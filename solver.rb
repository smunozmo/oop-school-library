class Solver
    def factorial(num)
        if num < 0
            return "Math Error"
        else
        (1..num).inject(:*) || 0
        end
    end

    def reverse(word)
        word
    end
end