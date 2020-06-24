import UIKit

class Student {
    
    var name: String
    var age: Int
    var phone: String?
    init(name: String, age: Int, phone: String?) {
        self.name = name
        self.age = age
        self.phone = phone
    }
    
    func getInForStudent() -> String {
    //        return "Name :" + self.name + ", Age : " + String(self.age) + ", Phone Number : " + self.phone??; "Chưa có số điện thoại"
        if self.phone != nil
        {
            return "Name :" + self.name + ", Age : " + String(self.age) + ", Phone Number : " + self.phone!
        }
        else {
            return "Name :" + self.name + ", Age : " + String(self.age)
        }
    }
}

class Class {
    
    var nameClass: String
    var nameTeacher: String
    var listStudent = [Student]()
    init(nameClass: String, nameTeacher: String){
        self.nameClass = nameClass
        self.nameTeacher = nameTeacher
    }
    func addStudent(name: String, age: Int, phone: String?) {
        let student = Student(name: name, age: age, phone: phone)
        listStudent.append(student)
    }
    
    func updateTeacher(nameTeacher: String) {
        self.nameTeacher = nameTeacher
    }
    
    func findStudent(nameStudent: String) {
        var listStudent : [String] = ["Nam", "Hoang", "Linh", "Huyen", "Duc", "Duong", "Tung", "Bang", "Bac", "Thanh"]
        for (index, value) in listStudent.enumerated() {
            if value == "\(nameStudent)" {
                listStudent[index] = "Dong"
                print("Done")
                break
            } else {
                print("Failed!")
            }
        }
    }
    
    func removeStudent(nameStudent: String) {
        var listStudent : [String] = ["Nam", "Hoang", "Linh", "Huyen", "Duc", "Duong", "Tung", "Bang", "Bac", "Thanh"]
        for (index, value) in listStudent.enumerated() {
            if value == "\(nameStudent)" {
                listStudent.remove(at: index)
                print("Done")
                break
            } else {
                print("Failed!")
            }
        }
    }

    
}
var infoClass = Class(nameClass: "TechMaster", nameTeacher: "Quynh")
var infoStudent = Student(name: "Nam", age: 22, phone: nil)
infoClass.addStudent(name: "Nam", age: 23, phone: nil)
infoClass.addStudent(name: "Hoang", age: 24, phone: nil)
infoClass.addStudent(name: "Linh", age: 25, phone: nil)
infoClass.addStudent(name: "Huyen", age: 26, phone: nil)
infoClass.addStudent(name: "Duc", age: 27, phone: nil)
infoClass.addStudent(name: "Duong", age: 28, phone: "0966456123")
infoClass.addStudent(name: "Tung", age: 29, phone: "0919987654")
infoClass.addStudent(name: "Bang", age: 30, phone: "0965345678")
infoClass.addStudent(name: "Bac", age: 31, phone: "0987654321")
infoClass.addStudent(name: "Thanh", age: 32, phone: "0345678912")
infoClass.updateTeacher(nameTeacher: "Quynh xinh")
infoClass.findStudent(nameStudent: "Nam")
infoClass.removeStudent(nameStudent: "Duc")
infoClass.removeStudent(nameStudent: "Lan")
var info = infoStudent.getInForStudent()
print(info)
