// Module: calculator 
module calculator::calculator;

// function accept two u8 args and returns sum in u32 
fun add(a: u8, b: u8) : u32 {
    let ans = a + b ;
    ans as u32
}

// function accept two u8 args and returns difference in u32
fun subtract(a: u8, b: u8) : u32 {
    let ans = a - b ;
    ans as u32 
}

// function accept two u8 args and returns product in u32
fun multiply(a: u8, b: u8) : u32 {
    let ans = a * b ;
    ans as u32 
}

// function accept two u8 args and returns quotient in u32
fun divide(a: u8, b: u8) : u32 {
    let ans = a / b ;
    ans as u32
}

// Public function accept two u16 args and returns u64
public fun answer(a: u16, b: u16) : (u64, u64, u64, u64) {
    let a1 = a as u8 ;
    let b1 = b as u8 ;
    let add = add(a1, b1) as u64 ;
    let subtract = subtract(a1, b1) as u64 ;
    let multiply = multiply(a1, b1) as u64 ;
    let divide = divide(a1, b1) as u64 ;
    (add, subtract, multiply, divide) 
}