fn main() {
    println!("Hello world!");
    another_function(5);
    print_labeled_measurement(5, 'h');

    //statements and expressions
    //-> Expresssions can be part of statements, calling a  functions is an expression
    // calling a macro is an expression, a new scope block creatd with curly brackets is an expression
    let y = {
        let x = 3;
        x + 1 // the expression do not include ending semicolons
    };

    println!("The value of y is: {y}");

    //Functions with return values
     let x = five();
     println!("The value of x is: {x}");

     let q = plus_one(5);
     println!("The value of x is: {q}");

     //Comments
     //-> This is a comment  :-[]

}
fn five() -> i32 {
    5 //expresion we want to return
}

fn plus_one(x: i32) -> i32 {
    x + 1
}

fn another_function(x: i32) {
    println!("The value of x is: {x}.");
}

fn print_labeled_measurement(value: i32, unit_label: char){
    println!("The measurement is: {value}{unit_label}")
}
