
import Foundation

let names = ["Krzysztof", "Paweł", "Ania", "Karolina","Amelia", "Błażej", "Xi", "Bonifacy", "Ferdek", "Robert", "Kuba", "Sergio", "Aneta", "Atena", "Zuzia", "Julka"]
let greetings = ["Hej","Siema", "Elo", "Siemano Kolano","Witam", "Salam Aleikum", "Yooo", "Dobry"]

func studentCreator(name: String, id: Int, greeting: String) -> () -> String {
    let sName = name
    let sGreeting = greeting
    let sId = id
    
    func student() -> String {
        let intro: String = "\(sGreeting), my name is \(sName) and my id is \(sId)"
        return intro
    }
    return student
}



var studentSet = [() -> String]()

(1...13).forEach { (z) in
    studentSet.append(studentCreator(name: names.randomElement()!, id: Int.random(in: 1...99999), greeting: greetings.randomElement()!))
}

studentSet.forEach { (student) in
    print(student())
}

