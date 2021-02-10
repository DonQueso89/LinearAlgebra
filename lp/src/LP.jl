module LP

using JuMP
using Clp

function example()
    # inspired by Linear Algebra and its applications Ch. 9

    m = Model(Clp.Optimizer)

    # unknowns
    @variable(m, 0 <= x1)
    @variable(m, 0 <= x2)
    @variable(m, 0 <= x3)

    # dot(C, x)
    @objective(m, Max, 2x1 + 3x2 + 4x3)

    # A ∈ R(mxn), with m constraints and n unknowns
    @constraint(m, x1 + x2 + x3 <= 50)
    @constraint(m, x1 + 2x2 + 4x3 <= 80)

    optimize!(m)

    println("Optimal X: x1: $(value(x1)) x2: $(value(x2)) x3: $(value(x3))")
    println("Optimal Objective value: $(objective_value(m))")

end # example

function practice_problem_one()
    # inspired by Linear Algebra and its applications Ch. 9

    m = Model(Clp.Optimizer)

    # unknowns
    @variable(m, 0 <= x1)
    @variable(m, 0 <= x2)

    # dot(C, x)
    @objective(m, Max, 2x1 + x2)

    @constraint(m, -x1 + x2 <= 8)
    @constraint(m, 3x1 + 2x2  <= 24)

    optimize!(m)

    println("Optimal X: x1: $(value(x1)) x2: $(value(x2))")
    println("Optimal Objective value: $(objective_value(m))")

end # practice problem one

function exercise_seven()
    # inspired by Linear Algebra and its applications Ch. 9

    m = Model(Clp.Optimizer)

    # unknowns
    @variable(m, 0 <= x1)
    @variable(m, 0 <= x2)

    # dot(C, x)
    @objective(m, Max, 80x1 + 65x2)

    @constraint(m, 2x1 + x2 <= 32)
    @constraint(m, x1 + x2  <= 18)
    @constraint(m, x1 + 3x2  <= 24)

    optimize!(m)

    println("Optimal X: x1: $(value(x1)) x2: $(value(x2))")
    println("Optimal Objective value: $(objective_value(m))")

end # exercise seven

end # module
