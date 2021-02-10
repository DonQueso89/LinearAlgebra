## Linear programming

### Description and terminology

A technique in which an objective function is optimized under a set of constraints.
These constraints are modeled by a system of linear inequalities. The solutions to
the system are called the `feasible set` and the region in which these points lie
the `feasible region` (see notes for a handwritten example of such a feasible region).

Canonical form:

Optimize `z(x)`

subject to

`Ax <= b`

and `x >= 0`

where:
_ `A` is a matrix of constants
_ `x` is a vector of variables for which we want to find the optimal inputs to z
\_ `b` is a vector of boundaries

note that a `>=` inequality can be multiplied by -1 to get it into
the canonical form.

The size of `x` is the number of dimensions of the problem and
the `feasible set` will be a convex set. According to the [Corner Point Theorem](<https://planetmath.org/cornerpointtheorem#:~:text=Corner%20Point%20Theorem.,(p)%3Da%20%E2%81%A2%20.&text=If%20r%20is%20a%20third,a%7D%20%E2%81%A2%20%E2%81%A2%20%E2%81%A2%20%E2%81%A2%20.>),
the solution to the system will always be one of the corners of this convex set which
can be found by plugging each corner into the objective function.

Things that can go wrong:
_ an unbounded feasible set (an infinite number of solutions)
_ no solution to the system
