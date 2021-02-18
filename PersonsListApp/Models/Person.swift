//
//  Person.swift
//  PersonsListApp
//
//  Created by Pandos on 17.02.2021.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}
    
extension Person {
        
        static func getPersonList() -> [Person] {
            
            var persons: [Person] = []
            
            let names = DataManager.spisok.names.shuffled()
            let surnames = DataManager.spisok.surnames.shuffled()
            let emails = DataManager.spisok.emails.shuffled()
            let phones = DataManager.spisok.phones.shuffled()
            
            for index in 0..<names.count {
                let person = Person(firstName: names[index],
                                    lastName: surnames[index],
                                    email: emails[index],
                                    phone: phones[index])
                
                persons.append(person)
            }
            
            return persons
        }
    }

