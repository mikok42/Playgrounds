import Foundation

let names = ["Zana", "Alex", "Brian", "Jack"]
//names.first(where: <#T##(String) throws -> Bool#>)
//names.last(where: <#T##(String) throws -> Bool#>)
//names.compactMap(<#T##transform: (String) throws -> ElementOfResult?##(String) throws -> ElementOfResult?#>)
//names.flatMap(<#T##transform: (String) throws -> Sequence##(String) throws -> Sequence#>)
//names.forEach(<#T##body: (String) throws -> Void##(String) throws -> Void#>)
//names.sort(by: <#T##(String, String) throws -> Bool#>)
//names.filter(<#T##isIncluded: (String) throws -> Bool##(String) throws -> Bool#>)


//
//
//let napis = "Napis"
//names
//    .sorted()
//    .forEach {
//        $0.enumerated().forEach { print($0) }
//     }
//
//let cos = names.first(where: { $0 == "Alex" })

//var x: ((String) -> Void)


//x = {
////    print($0)
//}

//(x)("ddd")

let foo: Int? = 3

print(foo ?? 1)
print(foo!)
print(foo)

//guard let ff = foo else { print("nie ma")}



let goo: [Int]? = [1,2,4]
//let goo23456: [Int?]? = [1,2,4]

print(goo![0])
let goo2: [Int] = goo ?? [9, 5, 8]


print((goo ?? [0, 8, 5])[0])

func cosss() {
    guard let loo = goo else { return }
    print(loo[0])
    
    
    if let boo = goo {
        print(boo[1])
    }
}
