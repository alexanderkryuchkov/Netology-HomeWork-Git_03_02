import UIKit

// ЗАДАЧА №1

// Создание Enum
enum DaysOfWeek {
    static let sunday = 0
    static let monday = 1
    static let tuesday = 2
    static let wednesday = 3
    static let thursday = 4
    static let friday = 5
    static let saturday = 6
}

// Создание структуры
struct JobApplication {
    var firstName: String
    var secondName: String
    var age: Int
    var education: String
}

// Создание экземпляров структур
let personOne = JobApplication(firstName: "Иван", secondName: "Иванов", age: 32, education: "Высшее")

// Создание экземпляров структур
let personTwo = JobApplication(firstName: "Сергей", secondName: "Сергеев", age: 24, education: "Среднее")

// Проверка
print("Анкета соискателя: \(personOne.firstName)  \(personOne.secondName), возраст: \(personOne.age), образование: \(personOne.education)")

print("Анкета соискателя: \(personTwo.firstName)  \(personTwo.secondName), возраст: \(personTwo.age), образование: \(personTwo.education)")

// Создание протокола и класса

// Протокол абстракции пилота
protocol PilotSetting {
    var firstName: String  {get set}
    var secondName: String  {get set}
    var qualification: String {get set}
    var flyingHours: Int  {get set}
        
    func addFlyingHours(by amount: Int)
}


class Pilot: PilotSetting {
    
    var firstName: String
    var secondName: String
    var qualification: String = ""
    var flyingHours: Int
    
    // Внутренняя функция пересчета квалификации
    private func examenQualification() {
        
        switch flyingHours {
        case 300...500:
            qualification = "Пилот"
        case 501...1000:
            qualification = "Опытный пилот"
        case 1000...:
            qualification = "Гуру"
        default:
            qualification = "Ученик"
        }
    }
    
    func addFlyingHours(by amount: Int) {
        flyingHours += amount
        examenQualification()
        
    // Если количество часов будет превышать столько то, тогда квалификация становится выше
    }
    
    init(firstName: String, secondName: String, qualification: String, flyingHours: Int) {
        self.firstName = firstName
        self.secondName = secondName
        self.qualification = qualification
        self.flyingHours = flyingHours
        
        examenQualification()
    }
    
}
