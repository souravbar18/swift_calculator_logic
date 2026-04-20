import Foundation
//enum case for operators
enum Operator: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
}
//creating func for showing results
func calculation(num1: Double, num2: Double) -> (sum: Double, sub: Double, mul: Double, div: Double) {
    return (
        sum: num1 + num2,
        sub: num1 - num2,
        mul: num1 * num2,
        div: num2 != 0 ? num1 / num2 : 0
    )
}

print("--- Welcome to my calculator app ---")
print("For exit, type 'exit'\n")
//while loop for infilte input
while true {
  //input first number
    print("Enter Your First Number: ", terminator: "")
    let input1 = readLine() ?? ""
    if input1.lowercased() == "exit" { break }
    
    guard let n1 = Double(input1) else {
        print("❌ Input a valid Number!")
        continue
    }
  //input op
    print("Enter Your Operator (+, -, *, /): ", terminator: "")
    let inputOp = readLine() ?? ""
    if inputOp.lowercased() == "exit" { break }

    // Enum এর rawValue ব্যবহার করে ইনপুট চেক করা
    guard let selectedOp = Operator(rawValue: inputOp) else {
        print("❌ Invalid Operator! Please use +, -, *, or /")
        continue
    }

    // input second number
    print("Enter Your Second Number: ", terminator: "")
    let input2 = readLine() ?? ""
    if input2.lowercased() == "exit" { break }
    
    guard let n2 = Double(input2) else {
        print("❌ Input a valid Number!")
        continue
    }

    // results
    let results = calculation(num1: n1, num2: n2)

    print("------------------------------------------------------------------")
    
    // using switch case for print results
    switch selectedOp {
    case .add:
        print("✅ The Sum Is: \(results.sum)")
    case .subtract:
        print("✅ The Subtraction Is: \(results.sub)")
    case .multiply:
        print("✅ The Multiplication Is: \(results.mul)")
    case .divide:
        if n2 == 0 {
            print("⚠️ Division by zero is not allowed!")
        } else {
            print("✅ The Division Is: \(results.div)")
        }
    }
    
    print("------------------------------------------------------------------")
    print("\nTry a new one or type 'exit' to quit.\n")
}

print("Thanks for using my calculator! Have a great rest day tomorrow!")
