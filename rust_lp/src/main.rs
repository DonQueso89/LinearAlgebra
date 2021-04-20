use minilp::{Problem, OptimizationDirection,ComparisonOp};

fn main() {
    /*
     * solve a simple linear system for diet with a single solution.
     * Based On Lay Section 1.10 Example 1
     */

    let mut problem = Problem::new(OptimizationDirection::Maximize);
    let milk = problem.add_var(1.0, (0.0, f64::INFINITY));
    let flour = problem.add_var(1.0, (0.0, f64::INFINITY));
    let whey = problem.add_var(1.0, (0.0, f64::INFINITY));

    problem.add_constraint(&[(milk, 36.0), (flour, 51.0), (whey, 13.0)], ComparisonOp::Eq, 33.0);
    problem.add_constraint(&[(milk, 52.0), (flour, 34.0), (whey, 74.0)], ComparisonOp::Eq, 45.0);
    problem.add_constraint(&[(milk, 0.0), (flour, 7.0), (whey, 1.1)], ComparisonOp::Eq, 3.0);

    let solution = problem.solve().unwrap();
    println!("{}", solution.objective());
    println!("{}", solution[milk]);
    println!("{}", solution[flour]);
    println!("{}", solution[whey]);

}
