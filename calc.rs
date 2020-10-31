use std::io::Write;

fn read_line() -> String {
    let mut buffer = String::new();
    std::io::stdin().read_line(&mut buffer).unwrap();
    buffer
}

fn main() {
    print!("Type first number: ");
    std::io::stdout().flush().ok();
    let num1 = read_line().trim().parse::<f64>().unwrap();

    print!("Type operator (+-*/): ");
    std::io::stdout().flush().ok();
    let line = read_line();
    let operator = line.trim();

    print!("Type second number: ");
    std::io::stdout().flush().ok();
    let num2 = read_line().trim().parse::<f64>().unwrap();

    let result = match operator {
        "+" => num1 + num2,
        "-" => num1 - num2,
        "*" => num1 * num2,
        "/" => num1 / num2,
        _ => panic!("Operator not supported"),
    };

    println!("{} {} {} = {}", num1, operator, num2, result);
}
