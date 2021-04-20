import Foundation

func calculator(a: Int, b: Int, operation: ( Int, Int)-> Int ) {
    print("witaj w kalkulatorze \n twój wynik to: ", terminator: "")
    print(operation(a, b))
}

var multiplication: ((Int, Int) -> Int)
multiplication = { return $0 * $1 }
var division: ((Int, Int) -> Int)
division = { return $0 / $1 }
var addition: ((Int, Int) -> Int)
addition = { return $0 + $1 }
var subtraction: ((Int, Int) -> Int)
subtraction = { return $0 - $1 }

let operations = [multiplication, division, addition,subtraction]


func calc() {
    print("please give me two numbers")
    
    guard let input1 = readLine() else { return }
    guard let input2 = readLine() else { return }
    
    guard let number1 = Int(input1) else { print(" no good"); return }
    guard let number2 = Int(input2) else { print(" no good"); return }
    
    print("what do you want to do?")
    guard let input3 = readLine() else {print("i dont get it"); return}
    guard let decision = Int(input3) else { print(" icant do that"); return}
    
    let operationSet: Set = [0, 1, 2, 3]
    if operationSet.contains(decision) {
        print(operations[Int(decision)](Int(number1), Int(number2)))
    } else {
        print("i cant do that")
    }
}
while(true) {
    calc()
}


