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

