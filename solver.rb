class Solver
    def factorial(num)
        if num < 0
            puts "Math Error"
        else
        (1..num).inject(:*) || 0
        end
    end
end