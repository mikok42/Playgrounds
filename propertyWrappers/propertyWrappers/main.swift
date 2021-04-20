import Foundation

let days: [String] = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" , "Sunday"]

@propertyWrapper
struct TimeWorked {
    private var hours: Int
    init() { self.hours = 0 }
    var wrappedValue: Int {
        get { return hours }
        set { hours = min(24, max(newValue, 0)) }
    }
}

class WorkClock {
    var week = [TimeWorked](repeating: TimeWorked.init(), count: 7)
    let workerName: String
    
    init(name: String) {
        self.workerName = name
        print("welcome aboard \(name) :)")
    }
    
    func takeTimeWorked() {
        
        (0...6).forEach { (i) in
            var inputCorrect: Bool = false
            print(" hello, \(self.workerName), it's \(days[i]) how long have you worked today?" )
            
            while !inputCorrect {
                guard let input = readLine() else { print("cant understand") ; return }
                guard let hours = Int(input) else { print("thats a weird number") ; return}
                week[i].wrappedValue = hours
                inputCorrect = true
            }
        }
    }
    
    func displayTimeWorked() {
        var i: Int = 0
        week.forEach { (time) in
            print("time worked on " + days[i] + " \(time.wrappedValue)")
            i += 1
        }
    }
}

let stasiekClock = WorkClock(name: "Stachu")
stasiekClock.takeTimeWorked()
stasiekClock.displayTimeWorked()
