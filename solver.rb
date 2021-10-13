class Solver
    def factorial(num)
        (1..num).inject(:*) || 0
    end
end