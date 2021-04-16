import Foundation

class Student {
    let name: String
    let id: Int
    weak var group: DeanGroup?
    
    init(name: String, id: Int, group: DeanGroup) {
        self.name = name
        self.id = id
        self.group = group
    }
    
    deinit {
        print("student \(name) is no more")
    }
}
class DeanGroup {
    let groupName: String
    let faculty: String
    var students: [Student]?
    
    func addStudentToGroup(name: String, id: Int) {
        self.students?.append(Student(name: name, id: id, group: self))
    }
    
    func presentGroup() {
        guard let students = students else { print("group is empty"); return}
        
        print("\(self.groupName) from faculty: \(self.faculty) has the following students: ")
        
        for student in students {
            print("\(student.name) with id \(student.name) ")
        }
        
    }
    init(groupName: String, faculty: String) {
        self.groupName = groupName
        self.faculty = faculty
        self.students = [Student]()
    }
    
    deinit {
        print("the group \(groupName) is no more")
    }
}

var grupa: DeanGroup?
grupa = DeanGroup(groupName: "elektronika", faculty: "WEiTI")

grupa?.addStudentToGroup(name: "mikołaj", id: 132)
grupa?.addStudentToGroup(name: "franek", id: 585)
grupa?.addStudentToGroup(name: "karol", id: 249)
grupa?.addStudentToGroup(name: "mateusz", id: 777)

grupa?.presentGroup()

grupa = nil
